function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}

function Search-RegistryUninstallKey {
param($SearchFor,[switch]$Wow6432Node)
$results = @()
$keys = Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | 
    foreach {
        $obj = New-Object psobject
        Add-Member -InputObject $obj -MemberType NoteProperty -Name GUID -Value $_.pschildname
        Add-Member -InputObject $obj -MemberType NoteProperty -Name DisplayName -Value $_.GetValue("DisplayName")
        Add-Member -InputObject $obj -MemberType NoteProperty -Name DisplayVersion -Value $_.GetValue("DisplayVersion")
        if ($Wow6432Node)
        {Add-Member -InputObject $obj -MemberType NoteProperty -Name Wow6432Node? -Value "No"}
        $results += $obj
        }
 
if ($Wow6432Node) {
$keys = Get-ChildItem HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | 
    foreach {
        $obj = New-Object psobject
        Add-Member -InputObject $obj -MemberType NoteProperty -Name GUID -Value $_.pschildname
        Add-Member -InputObject $obj -MemberType NoteProperty -Name DisplayName -Value $_.GetValue("DisplayName")
        Add-Member -InputObject $obj -MemberType NoteProperty -Name DisplayVersion -Value $_.GetValue("DisplayVersion")
        Add-Member -InputObject $obj -MemberType NoteProperty -Name Wow6432Node? -Value "Yes"
        $results += $obj
        }
    }
$results | sort DisplayName | where {$_.DisplayName -match $SearchFor}
} 

# check if instlled version is expected version
$UninstallKey = Search-RegistryUninstallKey -SearchFor "UniversalForwarder"
if (!($UninstallKey.DisplayVersion -eq "6.5.1.0")) {
    Print-FomattedEvent("UniversalForwarder v6.5.1.0 not installed, exiting")
    exit
}

# check if splunk home is present
$SplunkHome = "C:\Program Files\SplunkUniversalForwarder"
if (!(test-path $SplunkHome)) {
    Print-FomattedEvent("Splunk home is not present, exiting.")
    exit
}

# check if splunk is present
$ServiceStatus = Get-Service -Name SplunkForwarder -ErrorAction SilentlyContinue
if (!($ServiceStatus)) {
    Print-FomattedEvent("SplunkForwarder service is missing, exiting.")
    exit
}

# check if splunk is running
if (!($ServiceStatus.Status -eq "Running")) {
    Print-FomattedEvent("SplunkForwarder service is not running, exiting.")
    exit
}

# check if expected apps are present
Get-ChildItem "$splunkHome\etc\apps" -Recurse -Filter "UF-*" -ErrorAction SilentlyContinue

# do btool on inputs

# do btool on deployment client


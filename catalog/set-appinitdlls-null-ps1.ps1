function Print-FormattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}


$Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Windows'
$ValueName = 'AppInit_DLLs'
$ValueObj = (Get-ItemProperty -Path $Key -Name $ValueName -ErrorAction SilentlyContinue) 
if (!($ValueObj)) {
    Print-FormattedEvent("$($ValueObj) object was not present in $($Key).")
} else {
    $ValueData = $ValueObj | Select-Object -ExpandProperty $ValueName
    if (!($ValueData)) {
        $oldvaluedata = ''
    } else {
        $oldvaluedata = $valuedata
    }

    New-ItemProperty -Path $Key -name $ValueName -PropertyType String -Value $newvalue -ErrorAction SilentlyContinue
    Print-FormattedEvent("$($ValueName) changed from [$($oldvalue)] to [$($newvalue)].")
 
}




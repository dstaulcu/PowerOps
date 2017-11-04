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
        Print-FormattedEvent("$($ValueName) contained not data items.")
    } else {
        Print-FormattedEvent("$($ValueName) contained value data $($valuedata).")
    }
 
}




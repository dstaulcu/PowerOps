function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}

function GetLogonStatus  {
    try {
        $user = $null
        $user = gwmi -Class win32_computersystem -ComputerName $computer | select -ExpandProperty username -ErrorAction Stop
        }
    catch { "Not logged on"; return }
    try {
        if ((Get-Process logonui -ComputerName $computer -ErrorAction Stop) -and ($user)) {
            "Workstation locked by $user"
            }
        }
    catch { if ($user) { "$user logged on" } }
}

Print-FomattedEvent(GetRemoteLogonStatus)

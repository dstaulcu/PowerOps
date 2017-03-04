function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = Get-Date -format "yyyy-MM-dd HH:mm:ss.fff"
    "$EventTime;$env:computername;$Message"
}

Print-FomattedEvent("Hello world!")
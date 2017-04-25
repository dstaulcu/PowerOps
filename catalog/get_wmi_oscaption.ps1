﻿function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}

$Win32_OS_Caption = Get-WmiObject -Class win32_operatingsystem | Select-Object -ExpandProperty Caption

Print-FomattedEvent($Win32_OS_Caption)
function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}

#Print-FomattedEvent("Your Event Text")

$destination = "www.microsoft.com"
$troute = tracert $destination

$hops = @()
$traceinfo = Out-Null
$hopinfo = Out-Null
$counter = 0
foreach ($line in $troute) {
    if ((($line -match "]") -or ($line -match "Request Timed Out")) -and ($line -notmatch "Trac")) {
        $counter++
        $CustomEvent = New-Object -TypeName PSObject                 
        $CustomEvent | Add-Member -Type NoteProperty -Name "HopNumber" -Value $counter
        try {
            $ipaddy = [regex]::Match($line,'(\d+\.\d+\.\d+\.\d+)').captures.groups[1].value
        }
        catch {
            $ipaddy = "RequestTimeout"
        }
        $CustomEvent | Add-Member -Type NoteProperty -Name "IP" -Value $ipaddy
        $hops += $CustomEvent
        
        $hopinfo = "$($CustomEvent.HopNumber)`@$($CustomEvent.IP)"
        if ($traceinfo) {
            $traceinfo = "$traceinfo*$hopinfo"
        } else {
            $traceinfo = $hopinfo
        }       
    }
}

$ResultToPrint = ("`"" + $traceinfo + "`"")
Print-FomattedEvent("hello world!")

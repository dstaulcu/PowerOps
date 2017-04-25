function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}


$logfile = "C:\Program Files\SplunkUniversalForwarder\var\log\splunk\splunkd.log"

if (!(Test-Path $logfile))
{
    Print-FomattedEvent("Logfile not found")
    exit
}

# read last 100 lines of logfile into memory
$infile = Get-Content -Path $logfile -tail 10

$events = @()
foreach ($line in $infile)
{
    $event = $line | ConvertFrom-String 
    $event = $line.tostring()

    $event_section = $event -split " - "
    $event_detail = $event_section[1]
    $event_prefix = $event_section[0]
    $event_prefix = $event_prefix -replace ("  "," ")
    $event_prefix = $event_prefix -split ' '
    $event_component = $event_prefix[-1]
    $event_level = $event_prefix[-2]
    $event_time = "$($event_prefix[0]) $($event_prefix[1])"
        
#    $timespan = NEW-TIMESPAN –Start $event_time
#    $elapsed_time = [math]::round($timespan.TotalMinutes, 2)

#    if ($elapsed_time -le 10) 
#    {

        $CustomEvent = New-Object -TypeName PSObject                 
        $CustomEvent | Add-Member -Type NoteProperty -Name "Time" -Value $event_time
        $CustomEvent | Add-Member -Type NoteProperty -Name "Level" -Value $event_level
        $CustomEvent | Add-Member -Type NoteProperty -Name "Component" -Value $event_component
        $CustomEvent | Add-Member -Type NoteProperty -Name "Detail" -Value $event_detail
        $events += $CustomEvent
#    }

}

#$events = $events | Where-Object {$_.Level -ne "INFO"} 
#$events | Out-GridView

#$lastEvents = $events | sort-Object -Property Time -Descending | Select-Object -Unique Component
#$lastevents | Out-GridView
foreach ($event in $events)
{
    Print-FomattedEvent "$($event.Component):$($event.Level):$($event.detail)"
}

function Get-NetConnections
{
    $a = netstat -p tcp -n  
    $a = $a[4..$a.count] | ConvertFrom-String | select p2,p3,p4,p5
    $connections = @()
    foreach ($entry in $a)
    {
        $Proto = $entry.p2
        $LocalAddress = ($entry.P3).Split(":")[0]
        $LocalPort = ($entry.P3).Split(":")[1]
        $RemoteAddress = ($entry.P4).Split(":")[0]
        $RemotePort = ($entry.P4).Split(":")[1]
        $State = $entry.p5

        $CustomEvent = New-Object -TypeName PSObject                 
        $CustomEvent | Add-Member -Type NoteProperty -Name "Proto" -Value $Proto
        $CustomEvent | Add-Member -Type NoteProperty -Name "LocalAddress" -Value $LocalAddress
        $CustomEvent | Add-Member -Type NoteProperty -Name "LocalPort" -Value $LocalPort
        $CustomEvent | Add-Member -Type NoteProperty -Name "RemoteAddress" -Value $RemoteAddress
        $CustomEvent | Add-Member -Type NoteProperty -Name "RemotePort" -Value $RemotePort
        $CustomEvent | Add-Member -Type NoteProperty -Name "State" -Value $State
        $Connections += $CustomEvent
    }
    return $connections
}

# get current tcp-based network connections
$connections = Get-NetConnections

# get the distinct remoteaddresses amid connections
$RemoteAddresses = $connections | Select-Object -Unique RemoteAddress -ExpandProperty RemoteAddress



<#
foreach ($RemoteAddress in $RemoteAddresses)
{
    write-host $RemoteAddress
}
#>
workflow Execute-ParallellAcrossHosts {
    param(
        [string[]] $Computers,
        [PSCredential] $Credential
    )

    foreach -parallel ($Computer in $Computers) {

        InlineScript {

            function Print-FomattedEvent {
                param (
                    [string[]] $Message
                )
                $EventTime = Get-Date -format "yyyy-MM-dd HH:mm:ss.fff"
                "$EventTime;$env:computername;$Message"
            }

            $rando = Get-Random(3)
            sleep($rando)
            Print-FomattedEvent("Done sleeping after $rando seconds.")


        } -PSComputerName $Computer -PSCredential $Credential
    }
}

if (!($Credential)) {
    $Credential = Get-Credential -UserName "$env:computername\$env:USERNAME" -Message "Enter credential having network/admin access on target computers"
}

$Computers = @("Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC")

$job = Execute-ParallellAcrossHosts -Computers $Computers -Credential $Credential -AsJob -ErrorAction SilentlyContinue

$counter=0
$Results=@()

do {
    $counter++
    sleep(1)
    $jobresults = Receive-Job $job
    foreach ($jobresult in $jobresults) {
        $CustomEvent = New-Object -TypeName PSObject                 
        $CustomEvent | Add-Member -Type NoteProperty -Name "EventTime" -Value ($jobresult.Split(";")[0])
        $CustomEvent | Add-Member -Type NoteProperty -Name "Computer" -Value ($jobresult.Split(";")[1])
        $CustomEvent | Add-Member -Type NoteProperty -Name "Result" -Value ($jobresult.Split(";")[2])
        $Results += $CustomEvent 
    }
    write-host ('Results received from ' + $Results.count + ' of ' + $Computers.count + ' targeted computers after ' + $counter + ' seconds.')  

} until ($job.State -eq "Completed")

$results | Export-Csv -Encoding ASCII -Force -NoTypeInformation -path "$env:TEMP\Results.csv"

Remove-Job $job

$Results | Out-GridView

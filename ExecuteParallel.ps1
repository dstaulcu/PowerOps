workflow Execute-ParallellAcrossHosts {
    param(
        [string[]] $Computers,
        [PSCredential] $Credential,
        [string[]] $ScriptName
    )
    
    if ($ScriptName -eq "HelloWorld") {
        foreach -parallel ($Computer in $Computers) {
           InlineScript {C:\Users\David\Documents\Development\projects\PowerOps\catalog\helloworld.ps1} -PSComputerName $Computer -PSCredential $Credential
        }
    }

    if ($ScriptName -eq "get_win32_os_caption") {
        foreach -parallel ($Computer in $Computers) {
           InlineScript {C:\Users\David\Documents\Development\projects\PowerOps\catalog\get_win32_os_caption.ps1} -PSComputerName $Computer -PSCredential $Credential
        }
    }

}

if (!($Credential)) {
    $Credential = Get-Credential -UserName "$env:computername\$env:USERNAME" -Message "Enter credential having network/admin access on target computers"
}

$counter=0
$Results=@()
$JobExecutionEventTime = Get-Date -format "yyyyMMddHHmmss"
$ResultFile = "$env:TEMP\Results_$JobExecutionEventTime.csv"
$Computers = @("Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC","Mobile-PC")

function Show-Menu
{
     param (
           [string]$Title = 'My Menu'
     )
     cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' to execute HelloWorld action."
     Write-Host "2: Press '2' to execute Get_OSName action."
     Write-Host "Q: Press anything else to quit."
}


Show-Menu -Title "Select PowerAction to Execute"
$input = Read-Host "Please make a selection"
switch ($input)
     {
           '1' {
                'You chose option #1'
                $ScriptName = "helloworld"
                }
           '2' {
                'You chose option #2'
                $ScriptName = "get_win32_os_caption"
                }
           default {
                'You chose to quit'
                exit
                }
     }

$job = Execute-ParallellAcrossHosts -Computers $Computers -Credential $Credential -ScriptName $ScriptName -AsJob -ErrorAction SilentlyContinue


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


$results | Export-Csv -Encoding ASCII -Force -NoTypeInformation -path $ResultFile

Remove-Job $job

Import-Csv -Path $ResultFile | Out-GridView -Title "$ResultFile"

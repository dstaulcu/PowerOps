workflow Execute-ParallellAcrossHosts {
    param(
        [string[]] $Computers,
        [PSCredential] $Credential,
        [string[]] $ScriptPath
    )
 
    foreach -parallel ($Computer in $Computers) {
        InlineScript {& $Using:ScriptPath}
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

$CatalogPath = "C:\Users\David\Documents\Development\projects\PowerOps\catalog"
$CatalogScripts = Get-ChildItem $CatalogPath -Filter "*.ps1" 

function Show-Menu
{
     param (
           [string]$Title = 'My Menu'
     )
     $menuItemCount=0
     cls
     Write-Host "================ $Title ================"

     foreach ($CatalogScript in $CatalogScripts) {

        Write-Host "Press $menuItemCount to execute $CatalogScript.Name."
        ++$menuItemCount
     }
    Write-Host "Q: Press anything else to quit."
}


Show-Menu -Title "Select PowerAction to Execute"
$input = Read-Host "Please make a selection"

if (!(($input -ge 0) -and ($input -le $CatalogScripts.Count))) {
    write-host "$input selected, exiting."
    exit    
} 

$job = Execute-ParallellAcrossHosts -Computers $Computers -Credential $Credential -ScriptPath $CatalogScripts[$input].FullName -AsJob -ErrorAction SilentlyContinue

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

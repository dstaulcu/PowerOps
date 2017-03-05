<####################################################################
###### FUNCTIONS ####################################################
####################################################################>
function Execute-ParallellAcrossHosts {
    param(
        [string[]] $Computers,
        [PSCredential] $Credential,
        [string] $ScriptName,
        [scriptblock] $ScriptBlock
    )
 
    $job = Invoke-Command -ComputerName $Computers -ScriptBlock $ScriptBlock -Credential $Credential -ErrorAction SilentlyContinue -AsJob
    
    # Show incremental status of job and aggregate results into results array
    $counter=0
    $Results=@()
    do 
    {
        $counter++
        sleep(1)
        # get results since last second
        $jobresults = Receive-Job $job -ErrorAction SilentlyContinue
        foreach ($jobresult in $jobresults) {
            $CustomEvent = New-Object -TypeName PSObject                 
            $CustomEvent | Add-Member -Type NoteProperty -Name "EventTime" -Value ($jobresult.Split(";")[0])
            $CustomEvent | Add-Member -Type NoteProperty -Name "Computer" -Value ($jobresult.Split(";")[1])
            $CustomEvent | Add-Member -Type NoteProperty -Name "ScriptName" -Value $ScriptName
            $CustomEvent | Add-Member -Type NoteProperty -Name "Result" -Value ($jobresult.Split(";")[2])
            $Results += $CustomEvent 
        }
        # print current status of job for nervous|impatient|reward-driven users
        write-host ('Results received from ' + $Results.count + ' of ' + $Computers.count + ' targeted computers after ' + $counter + ' seconds.')  
    } until (($job.State -eq "Completed" -or $job.State -eq "Failed"))
    Remove-Job $job
    return $Results
}

function Show-Menu
{
     param (
           [string]$Title = 'My Menu'
     )
     $menuItemCount=0
     cls
     Write-Host "================ $Title ================"

     foreach ($CatalogScript in $CatalogScripts) {

        Write-Host "Enter '$menuItemCount' to execute $CatalogScript"
        ++$menuItemCount
     }
    Write-Host "Enter anything else to exit"
    write-host 
}

<####################################################################
###### MAIN #########################################################
####################################################################>

# Array of Computers to target, if not already defined on previous run
if (!($Computers)) {
    $Computers = @("Mobile-pc","Win7X64","WinSRV2016STD","SomeOfflineHost")
}

# verify catalog folder is where expected (same folder as script)
$CatalogPath = ($MyInvocation.MyCommand.path).replace($MyInvocation.MyCommand.Name,"Catalog")
if (!(Test-Path -Path $CatalogPath)) {
    write-host "Invalid path to catalog folder: $catalogpath. Exiting"
    exit
}

# Get credential from admin if not already provided in previous session
if (!($Credential)) {
    $Credential = Get-Credential -UserName "$env:userdomain\$env:username" -Message "Enter credential having network/admin access on target computers"
}

# Get list of scripts in catalog file
$CatalogScripts = Get-ChildItem $CatalogPath -Filter "*.ps1" 

# present a menu of scripts that user could choose to execute
Show-Menu -Title "Select Script Catalog Item to Execute"
$input = Read-Host "Please make a selection"
if (!(($input -ge 0) -and ($input -le $CatalogScripts.Count))) {
    write-host "$input selected, exiting."
    exit    
} 

# prepare output file
$JobExecutionEventTime = ((get-date).ToUniversalTime()).ToString("yyyyMMddHHmmss")
$ResultFile = "$env:TEMP\Results_$JobExecutionEventTime.csv"

# save some disk-io by reading scriptfile into scriptblock
$sb = get-command $CatalogScripts[$input].FullName | select -ExpandProperty ScriptBlock
$sn = $CatalogScripts[$input].Name

# execute the selected script remotely
$Results = Execute-ParallellAcrossHosts -Computers $Computers -Credential $Credential -Scriptblock $sb -ScriptName $sn

# write aggregated results to csv and present in gridview
$Results | Export-Csv -Encoding ASCII -Force -NoTypeInformation -path $ResultFile
Import-Csv -Path $ResultFile | Out-GridView -Title "$ResultFile"

<####################################################################
###### POST-PROCESS FUN #############################################
#####################################################################

$Computers = $Results | Where-Object {$_.Result -like "*Windows 7*"} | Select-Object -ExpandProperty Computer

####################################################################>

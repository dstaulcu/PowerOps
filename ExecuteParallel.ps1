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
    {1
        $counter++
        sleep(1)
        # get results since last second
        $jobresults = Receive-Job $job -ErrorAction SilentlyContinue
        foreach ($jobresult in $jobresults) {
            $CustomEvent = New-Object -TypeName PSObject                 
            $CustomEvent | Add-Member -Type NoteProperty -Name "EventTime" -Value $($jobresult.Split(";")[0])
            $CustomEvent | Add-Member -Type NoteProperty -Name "Computer" -Value $($jobresult.Split(";")[1])
            $CustomEvent | Add-Member -Type NoteProperty -Name "ScriptName" -Value $ScriptName
            $CustomEvent | Add-Member -Type NoteProperty -Name "Result" -Value $($jobresult.Split(";")[2])
         
            $Results += $CustomEvent 
        }
        # print current status of job for nervous|impatient|reward-driven users
#        write-host ('Results received from ' + $Results.count + ' of ' + $Computers.count + ' targeted computers after ' + $counter + ' seconds.') 
        Write-Progress -activity "Execution of $($scriptname) job has taken $($counter) seconds." -status "Results received from $($Results.count) of $($computers.count) hosts." -PercentComplete $(($Results.count/$computers.count)*100)
    } until (($job.State -eq "Completed" -or $job.State -eq "Failed"))
    Remove-Job $job
    return $Results
}

Function Button_Click()
{
    $global:catalogselected = $this.text
    $Form.Close()
}

function Show-Menu-Catalog
{
    param (
        [string]$Title = 'My Menu'
    )

    # get longest scriptname in catalog to determine max button length
    $btnMaxLengthX = 0
    foreach ($CatalogScript in $CatalogScripts)
    {
        if ($CatalogScript.name.length -gt $btnMaxLengthX) { $btnMaxLengthX = $CatalogScript.name.length }
    }
    $btnMaxLengthX= (10*$btnMaxLengthX)
    $frmMaxLengthX = (9*$Title.Length)
    if ($btnMaxLengthX -gt $frmMaxLengthX) { $frmMaxLengthX = $btnMaxLengthX }

    Add-Type -AssemblyName System.Windows.Forms
    $form = New-Object Windows.Forms.Form
    $Form.Text = $title
    $frmMaxLengthY = (35*$CatalogScripts.count)
    $form.Size = New-Object Drawing.Size($frmMaxLengthX,$frmMaxLengthY)
    $form.StartPosition = "CenterScreen"
    $form.TopMost = $true
    $btnlocX = 10
    $btnlocY = 10
    foreach ($CatalogScript in $CatalogScripts)
    {
        $btn = New-Object System.Windows.Forms.Button
        $btn.Location = New-Object System.Drawing.Size($btnlocX,$btnlocY)
        $btn.Size = New-Object Drawing.Size($btnMaxLengthX,20)
        $btn.Text = $CatalogScript.name
        if (($catalogscript.Name -like "set-*") -or ($catalogscript.Name -like "remove-*")) { $btn.ForeColor = [System.Drawing.Color]::Red }
        $btn.Add_Click({Button_Click})
        $form.Controls.Add($btn)
        $btnlocX += 0
        $btnlocY += 25
    }
    $drc = $form.ShowDialog()
}

function Show-Menu-Targets
{
    param (
        [string]$Title = 'My Menu'
    )
    cls
    Write-Host "================ $Title ================"
    Write-Host
    Write-Host "Enter '0' to input computer names manually"
    Write-Host "Enter '1' to import computer names from a txt file"
    Write-Host "Enter '2' to reuse current value of the `$computers array"
    Write-Host "Enter '3' to include computers with specified results from `$computers array"
    Write-Host "Enter '4' to exclude computers with specified results from `$computers array"
    Write-Host 
    Write-Host "Enter anything else to exit"
    write-host 
}

function Show-Menu-Results
{
    param (
        [string]$Title = 'My Menu'
    )
    $menuItemCount = 0
    cls
    Write-Host "================ $Title ================"
    Write-Host
    foreach ($Result in $ResultSummary) {

        Write-Host "Enter '$menuItemCount' to filter on '$($Result.Name)'"
        ++$menuItemCount
    }
    Write-Host 
    Write-Host "Enter anything else to exit"
    write-host 
}


<####################################################################
###### MAIN #########################################################
#################################################################0###>

# present a menu of input options for array of computers to target
Show-Menu-Targets -Title "Select method to identify computers to target"
$input_targets = Read-Host "Please make a selection"
if (!(($input_targets -ge 0) -and ($input_targets -le 4))) {
    write-host "$input_targets entered, exiting."
    exit    
} 

# handle condition where manual input menu item was selected
if ($input_targets -eq 0) {
    [void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
    $title = 'PowerOps'
    $msg   = 'Enter target computer(s) (eg. wks1, wks2, etc.):'

    $text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)
    if (!($text)) {
        write-host "User cancelled the form!"
        exit
    } else {
        $Computers=@()
        if ($text -match ",") {
            $text = $text.Split(",")
            foreach ($item in $text) {
                $item.trim()
                $Computers += $item
            }

        } else {
            $computers = $text.Trim()
        }

    }
}

# handle condition where txt file input menu item was selected
if ($input_targets -eq 1) {
    $fd = New-Object system.windows.forms.openfiledialog
    $fd.InitialDirectory = ($MyInvocation.MyCommand.path).replace($MyInvocation.MyCommand.Name,"")
    $fd.MultiSelect = $false
    $fd.Filter = "TXT (*.txt)| *.txt"
    $fd.showdialog()
    $fd.filenames

    if (!($fd.FileName)) {
        "operation was cancelled, exiting."
        exit
    } else {
        $computers = Get-Content -Path $fd.FileName
    }
}

# handle condition where re-use menu item was selected
if ($input_targets -eq 2) {
    if (!($Computers)) {
        write-host "computers array does not yet exist for reuse, exiting"
        exit
    }    
}

# handle condition where include filter menu item was selected
if ($input_targets -eq 3) {
    cls
    if (!($Computers)) {
        write-host "computers array does not yet exist for reuse, exiting"
        exit
    }
    if (!($Results)) {
        write-host "results array does not yet exist for reuse, exiting"
        exit
    }
    $ResultSummary = $Results | Group-Object -Property result | Sort-Object Count -Descending | Select-Object -First 10 -Property Count, Name
    Show-Menu-Results -Title "Select result you want want to INCLUDE"
    $input_results = Read-Host "Please make a selection"
    if (!($input_results -ge 0) -and ($input_results -le $ResultSummary.count)) {
        write-host "$input_targets entered, exiting."
        exit
    }            
    $Computers = $results | where-object {$_.Result -like "*$($ResultSummary[$input_results].Name)*"} | Select-Object -ExpandProperty Computer
}

# handle condition where exclude menu item was selected
if ($input_targets -eq 4) {
    cls
    if (!($Computers)) {
        write-host "computers array does not yet exist for reuse, exiting"
        exit
    }
    if (!($Results)) {
        write-host "results array does not yet exist for reuse, exiting"
        exit
    }
    $ResultSummary = $Results | Group-Object -Property result | Sort-Object Count -Descending | Select-Object -First 10 -Property Count, Name
    Show-Menu-Results -Title "Select result you want want to EXCLUDE"
    $input_results = Read-Host "Please make a selection"
    if (!($input_results -ge 0) -and ($input_results -le $ResultSummary.count)) {
        write-host "$input_targets entered, exiting."
        exit
    }            
    $Computers = $results | where-object {$_.Result -notlike "*$($ResultSummary[$input_results].Name)*"} | Select-Object -ExpandProperty Computer
    if (!($input_results -ge 0) -and ($input_results -le $ResultSummary.count)) {
        write-host "$input_targets entered, exiting."
        exit
    }            
    if (!($Computers)) {
        write-host "computers array is now empty, exiting"
        exit
    }

}

# verify catalog folder is where expected (same folder as script)
$CatalogPath = ($MyInvocation.MyCommand.path).replace($MyInvocation.MyCommand.Name,"Catalog")
if (!(Test-Path -Path $CatalogPath)) {
    write-host "Invalid path to catalog folder: $catalogpath. Exiting"
    exit
}

# Get credential from admin if not already provided in previous session
if (!($Credential)) {
    $Credential = Get-Credential -UserName "$($env:username)" -Message "Enter credential having network/admin access on target computers"
}

# Get list of scripts in catalog file
$CatalogScripts = Get-ChildItem $CatalogPath -Filter "*.ps1" 

# present a menu of scripts that user could choose to execute
$global:catalogselected = Out-Null
Show-Menu-Catalog -Title "Select Script Catalog Item to Execute against $($Computers.count) computer(s)."
if (!($global:catalogselected)) { exit }
$global:catalogselected = $CatalogScripts | Where-Object {$_.Name -eq $global:catalogselected} | Select-Object -ExpandProperty fullname
write-host "Executing $($global:catalogselected)"

# prepare output file
$JobExecutionEventTime = ((get-date).ToUniversalTime()).ToString("yyyyMMddHHmmss")
$ResultFile = "$env:TEMP\Results_$JobExecutionEventTime.csv"

# save some disk-io by reading scriptfile into scriptblock
$sb = get-command $global:catalogselected | select -ExpandProperty ScriptBlock
$sn = $CatalogScripts[$input].Name

# execute the selected script remotely
$Results = Execute-ParallellAcrossHosts -Computers $Computers -Credential $Credential -Scriptblock $sb -ScriptName $sn

# write aggregated results to csv and present in gridview
#$Results | Export-Csv -Encoding ASCII -Force -NoTypeInformation -path $ResultFile
$Results | Export-Csv -Encoding ASCII -Force -NoTypeInformation -path $ResultFile
Import-Csv -Path $ResultFile | Out-GridView -Title "$ResultFile"

<####################################################################
###### POST-PROCESSING BEGIN ########################################
#####################################################################

#####################################################################
###### RESET CONTROL VALUES (COMPUTERS/CREDENTIALS)
$Computers = out-null
$Credential = out-null

#####################################################################
###### FILTER COMPUTERS ARRAY TO INCLUDE ONLY FILTERED RESULTS
$Computers = $Results | Where-Object {$_.Result -like "*Windows 7*"} | Select-Object -ExpandProperty Computer

#####################################################################
###### NEXT CLEVER IDEA
$Credential = out-null

#####################################################################
###### POST-PROCESSING END ##########################################
####################################################################>

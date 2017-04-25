function Print-FomattedEvent {
    param (
        [string[]] $Message
    )
    $EventTime = ((get-date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ss.fff")
    "$EventTime;$env:computername;$Message"
}

function CheckKeyValue($file, $keyname, $expectedvalue)
{
    $fileinfo = Get-Item $file
    $data = Get-Content $file
    $match = $true
    foreach ($line in $data)
    {
        if ($line -like "$keyname*")
        {
            $pair = $line.split("=")
            $key = $pair[0].trim()
            $value = $pair[1].trim()
#            Print-FomattedEvent("key $($keyname) from $($fileinfo.Name); contains $($value)")
            if ($value -ne $expectedvalue)
            {
                $match = $false
            }
        }
    }
    return $match
}

$file = "C:\Program Files\SplunkUniversalForwarder\etc\system\local\inputs.conf"
if (test-path -Path $file) { $check1 = CheckKeyValue -file $file -keyname "host" -expectedvalue $env:COMPUTERNAME }

$file = "C:\Program Files\SplunkUniversalForwarder\etc\system\local\server.conf"
if (test-path -path $file) { $check2 = CheckKeyValue -file $file -keyname "serverName" -expectedvalue $env:computername }

if ((!($check1)) -or (!($check2)))
{
    Print-FomattedEvent("agent identity is non-compliant, correcting issue.")
    Start-Process -FilePath "C:\Program Files\SplunkUniversalForwarder\bin\splunk.exe" -argumentlist "stop" -Wait -WindowStyle Hidden
    & 'C:\Program Files\SplunkUniversalForwarder\bin\splunk.exe' clone-prep-clear-config
    Start-Process -FilePath "C:\Program Files\SplunkUniversalForwarder\bin\splunk.exe" -argumentlist "start" -Wait -WindowStyle Hidden
}
else
{
   Print-FomattedEvent("agent identity is compliant.")
}
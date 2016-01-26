$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/MIUI-v7-porters/all_devices/archive/master.zip"
$Path = "$curDir\Dini.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)
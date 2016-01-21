$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/I1PABIJJA/all_devices/archive/master.zip"
$Path = "$curDir\Dini.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)
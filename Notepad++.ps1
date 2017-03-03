$webClient = New-Object -TypeName System.Net.WebClient
$link = "https://notepad-plus-plus.org/repository/7.x/7.3.2/npp.7.3.2.Installer.x64.exe"
$exe = $env:TEMP + "\npp.7.3.2.Installer.x64.exe"

try
{
    $webClient.DownloadFile($link, $exe)
    & $exe
}
catch 
{
    Write-Error "Notepad++ was not downloaded!"
}

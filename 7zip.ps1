$webClient = New-Object -TypeName System.Net.WebClient
$7zipURL = "http://www.7-zip.org/a/7z1604-x64.exe"
$7ZipExe = $env:TEMP + "\7zip.exe"

try
{
    $webClient.DownloadFile($7zipURL, $7ZipExe)
    & $7ZipExe
}
catch 
{
    Write-Error "7-zip was not installed!"
}
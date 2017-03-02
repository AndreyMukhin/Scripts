$machineName = "machineName"

cd $env:windir\system32
mstsc.exe
Start-Sleep -Milliseconds 1000
[System.Windows.Forms.SendKeys]::SendWait($machineName)
[System.Windows.Forms.SendKeys]::SendWait("~")

Start-Sleep -Milliseconds 5000
[System.Windows.Forms.SendKeys]::SendWait("psw")
[System.Windows.Forms.SendKeys]::SendWait("~")

$tempPath = "C:\Temp"
Get-ChildItem -Path $tempPath -Recurse | Remove-Item -Force

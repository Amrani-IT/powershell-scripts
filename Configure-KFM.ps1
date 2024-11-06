$KfmPath = "$env:UserProfile\OneDrive - CompanyName"
New-Item -Path $KfmPath -ItemType Directory
Start-Process "OneDrive.exe" -ArgumentList "/configure $KfmPath"

Import-Module ActiveDirectory
Get-ADUser -Filter * -Property DisplayName, EmailAddress, Department | 
Select-Object DisplayName, EmailAddress, Department | 
Export-Csv -Path "C:\Output\ADUsers.csv" -NoTypeInformation

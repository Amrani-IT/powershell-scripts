Connect-AzureAD
Get-AzureADUser -All $true | Select-Object DisplayName, UserPrincipalName, Department

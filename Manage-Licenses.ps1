Connect-AzureAD
$licenseSKU = "ENTERPRISEPACK" # Change to the license you need
$users = Import-Csv -Path "C:\Input\Users.csv"

foreach ($user in $users) {
    Set-AzureADUserLicense -ObjectId $user.UserPrincipalName -AddLicenses $licenseSKU
}

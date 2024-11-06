Import-Module ActiveDirectory
$users = Import-Csv -Path "C:\Input\NewUsers.csv"

foreach ($user in $users) {
    New-ADUser -Name "$($user.FirstName) $($user.LastName)" -SamAccountName $user.Username `
        -UserPrincipalName "$($user.Username)@domain.com" -DisplayName "$($user.FirstName) $($user.LastName)" `
        -Department $user.Department -Enabled $true
}

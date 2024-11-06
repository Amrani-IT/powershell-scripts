Connect-ExchangeOnline
$users = Import-Csv -Path "C:\Input\Emails.csv"

foreach ($user in $users) {
    Set-Mailbox -Identity $user.OldEmail -PrimarySmtpAddress $user.NewEmail
}

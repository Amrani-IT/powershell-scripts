Connect-ExchangeOnline
$mailboxes = @("user1@domain.com", "user2@domain.com")

foreach ($mailbox in $mailboxes) {
    New-MailboxExportRequest -Mailbox $mailbox -FilePath "\\Path\To\Exports\$($mailbox).pst"
}

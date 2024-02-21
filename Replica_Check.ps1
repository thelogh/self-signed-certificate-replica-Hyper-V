#Huper-V Replica script by Thelogh
#How to set up replication on Hyper-V 2022 [step by step] with Active Directory off-domain self-signed certificates
#https://www.alldiscoveries.com/how-to-set-up-replication-on-hyper-v-2022-step-by-step-with-active-directory-off-domain-self-signed-certificates
#For all requests write on the blog
#REPOSITORY
#https://github.com/thelogh/self-signed-certificate-replica-Hyper-V
#V.1.0.0
#
#C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
#–ExecutionPolicy Bypass C:\Hyper-V\Replica_Check.ps1

if ((Get-VMReplication | select-string -inputobject {$_.Health} -pattern "Warning") -like "Warning")
{
$SMTPServer = "smtp.server.com"
#$SMTPPort = "587"
$SMTPPort = "25"
$Username = "info@example.com"
$Password = "password"
$to = "info@example.com"
$subject = "Replica WARNING error on the server HYPER-V"
$body = "Replica WARNING error on the server HYPER-V"
$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.Body = $body
$message.to.add($to)
$message.from = $username
#FIX MESSAGE ID FOR GOOGLE SERVER
$message.Headers.Add( "Message-Id", "<" + [guid]::NewGuid().ToString() + "@example.com>" );
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
#Enable SSL for sending
#$smtp.EnableSSL = $true
#IN CASE OF AUTHENTICATION FOR SENDING MAIL, UNCOMMENT TO SEND USERNAME AND PASSWORD
#$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
}
elseif ((Get-VMReplication | select-string -inputobject {$_.Health} -pattern "Critical") -like "Critical")
{
$SMTPServer = "smtp.server.com"
#$SMTPPort = "587"
$SMTPPort = "25"
$Username = "info@example.com"
$Password = "password"
$to = "info@example.com"
$subject = "Replica CRITICAL error on the server HYPER-V"
$body = "Replica WARNING error on the server HYPER-V"
$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.Body = $body
$message.to.add($to)
$message.from = $username
#FIX MESSAGE ID FOR GOOGLE SERVER
$message.Headers.Add( "Message-Id", "<" + [guid]::NewGuid().ToString() + "@example.com>" );
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
#Enable SSL for sending
#$smtp.EnableSSL = $true
#IN CASE OF AUTHENTICATION FOR SENDING MAIL, UNCOMMENT TO SEND USERNAME AND PASSWORD
#$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
}
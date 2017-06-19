$EmailFrom = “from@gmail.com”

$EmailTo = “to@gmail.com”

$Subject = “Test”

$Body = “Sent with a powershell script.”

$SMTPServer = “smtp.gmail.com”

$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPClient.EnableSsl = $true

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“user”, “pass”);

$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

pause
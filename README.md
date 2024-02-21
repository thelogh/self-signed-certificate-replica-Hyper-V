# How to set up replication on Hyper-V 2022 [step by step] with Active Directory off-domain self-signed certificates
# Complete Guide https://www.alldiscoveries.com/how-to-set-up-replication-on-hyper-v-2022-step-by-step-with-active-directory-off-domain-self-signed-certificates
## To generate certificates we can choose various options, I have chosen 3 of the most common ones.
1 – Makecert, Microsoft tool for creating self-signed X.509 certificates, contained in the Microsoft Windows Software Development Kit (SDK). Now deprecated but very simple to use.
Guide= https://learn.microsoft.com/en-us/windows/win32/seccrypto/makecert
Download = https://developer.microsoft.com/en-us/windows/downloads/sdk-archive/

2 - Powershell cmdlet New-SelfSignedCertificate, method now used and present in the Microsoft operating system.
Guide= https://learn.microsoft.com/en-us/powershell/module/pki/new-selfsignedcertificate
Download = https://learn.microsoft.com/it-it/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4

3- OpenSSL, the most used tool especially in the extremely flexible Linux world
Guide = https://www.openssl.org/docs/
Download = https://slproweb.com/products/Win32OpenSSL.html
#Windows Server 2016
#If you would create a new domain in your server pls comply the next things
 #Complaint this before execute "creation.ps1"
 
 #Itsrequired  Set a static ip in your Server
 NewNetIPAddress InterfaceIndex 4 -IPAddress 192.168.1.8-PrefixLenght 24 DefaultGateway 192.168.1.1
 
 #Set you as your dns
 
 Set-DnsClientServerAddress -InterfaceIndex 4 -ServerAddresses ("192.168.1.8","8.8.8.8")

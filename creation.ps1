#The first is reading the README document
  
#Steps to do a domain in Windows Server are :
  #To list all features and roles write the next command: "Get-WindowsFeature" 

#The first step: install the AD DS Role in the server with the following commmand.
Install-WindowsFeature -Name AD-DomainServices -IncludeManagementTools

#The second step is configure the AD-DomainService: 

   #Command to setup new active directory domain 
   Install-ADDSForest `
   #Defines the FWDN(Fully Qualified Domain Name)
  -DomainName "example.com" `
   #Its a parameter witch create a DNS delegations 
  -CreateDnsDelegation:$false `  
   #Path to store Ntds.dit(Ative directory database file) 
  -DatabasePath "C:\Windows\NTDS" ` 
  -DomainMode "WinThreshold" `  
   #Defines the NetBios name
  -DomainNetbiosName "Example" ` 
  -ForestMode "WinThreshold" ` 
   #Fo a forest instalation is a requeriment 
  -InstallDns:$false `
   #To save log fiels
  -LogPath "C:\Windows\NTDS" `  
   #Cancel the system restart 
  -NoRebootOnCompletion:$True `  
   #Define the path of SYSVOL folder path
  -SysvolPath "C:\Windows\SYSVOL" `
   #Force the commando and ignore the any warning
  -Force:$true `
  
# The third step: install the roles(For example: dns,dhcp,STMP)
#Install-WindowsFeature -Name <feature_name>  -Restart
Install-WindowsFeature -Name DNS –IncludeManagementTools 
Install-WindowsFeature -Name DHCP  –IncludeManagementTools
Install-WindowsFeature -Name SMTP-Server –IncludeManagementTools
  #To unistall any windows role or feature do the next command
  #Uninstall-WindowsFeature -Name <feature_name>  -Restart

# You must install this feature if you use a servermail(ex:hmail)
Install-WindowsFeature -Name Net-Framework-Core


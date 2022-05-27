#The first is reading the README document
  
#Steps to do a domain in Windows Server are :
  #To list all features and roles write the next command: "Get-WindowsFeature" 

#The first step: install the AD DS Role in the server with the following commmand.
Install-WindowsFeature -Name AD-DomainServices -IncludeManagementTools

#The second step is configure the AD-DomainService: 

   Install-ADDSForest `
  -DomainName "example.com" `
  -CreateDnsDelegation:$false `  
  -DatabasePath "C:\Windows\NTDS" ` 
  -DomainMode "WinThreshold" `  
  -DomainNetbiosName "Example" ` 
  -ForestMode "WinThreshold" ` 
  -InstallDns:$true ` 
  -LogPath "C:\Windows\NTDS" `  
  -NoRebootOnCompletion:$True `  
  -SysvolPath "C:\Windows\SYSVOL" `
  -Force:$true `
  
# The third step: install the roles(For example: dns,dhcp,STMP)
#Install-WindowsFeature -Name <feature_name>  -Restart
Install-WindowsFeature -Name DNS  
Install-WindowsFeature -Name DHCP  
Install-WindowsFeature -Name SMTP-Server 
  #To unistall any windows role or feature do the next command:
  #Uninstall-WindowsFeature -Name <feature_name>  -Restart

# The third step: install the features
Install-WindowsFeature -Name Net-Framework-Core


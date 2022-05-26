#The first is reading the README document:
  
#Steps to do a domain in Windows Server are :

#The first step: install the AD DS Role in the server with the following commmand.

Install-WindowsFeature -Name AD-DomainServices -IncludeManagementTools

#The second step: 

   Install-ADDSForest `
  -DomainName "example.com" 
  -CreateDnsDelegation:$false 
  -DatabasePath "C:\Windows\NTDS" 
  -DomainMode "7"  
  -DomainNetbiosName "Example" 
  -ForestMode "7"  
  -InstallDns:$true  
  -LogPath "C:\Windows\NTDS"  
  -NoRebootOnCompletion:$True  
  -SysvolPath "C:\Windows\SYSVOL" 
  -Force:$true
# The third step: 


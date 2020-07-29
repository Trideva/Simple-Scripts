:: This batch file is for enumeration
:: and saves the output to a .txt file
ECHO On
:: This lists local users
net users 
@set /p DUMMY=Hit ENTER to continue...
:: This lists domain users
net group "Domain Users" /domain 
@set /p DUMMY=Hit ENTER to continue...
:: This identifies your domain
wmic computersystem get domain 
@set /p DUMMY=Hit ENTER to continue...
:: Enumerate domain users
net accounts /domain 
:: Enumerate domain computers
net view 
@set /p DUMMY=Hit ENTER to continue...
@echo "YOU ARE NOW ENUMERATED"

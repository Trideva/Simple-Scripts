:: This batch file is for enumeration
:: and saves the output to a .txt file
ECHO OFF
:: This lists local users
net users >> results.txt
:: This lists domain users
net group "Domain Users" /domain >> results.txt
:: This identifies your domain
wmic computersystem get domain >> results.txt
:: Enumerate domain users
net accounts /domain >> results.txt
:: Enumerate domain computers
net view >> results.txt

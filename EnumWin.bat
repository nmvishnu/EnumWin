:: EnumWin - Windows Enumeration script. Created by Vishnu N M. Date: 03-11-2020.
:: Tested on Windows XP SP3, Windows 7, Windows 8.1, Windows 10.
:: Script is useful for older systems. For Win 7 and above, use PowerShell scripts.
@echo off
@echo Please wait....
echo =========== >> output.txt 2> nul
echo USERS' INFO >> output.txt 2> nul
echo =========== >> output.txt 2> nul
echo. >> output.txt 2> nul
echo CURRENT USER INFO  >> output.txt 2> nul
echo ----------------------------- >> output.txt 2> nul
echo Current User: %username% >> output.txt 2> nul
echo. >> output.txt 2> nul
whoami /all >> output.txt 2> nul
echo. >> output.txt 2> nul
echo ADMINISTRATOR INFO  >> output.txt 2> nul
echo ------------------------------- >> output.txt 2> nul
net localgroup administrators >> output.txt 2> nul
echo. >> output.txt 2> nul
echo USERS  >> output.txt 2> nul
echo --------- >> output.txt 2> nul
net users >> output.txt 2> nul
echo. >> output.txt 2> nul

echo ============ >> output.txt 2> nul
echo NETWORKING >> output.txt 2> nul
echo ============ >> output.txt 2> nul
echo. >> output.txt 2> nul
echo MAC >> output.txt 2> nul
echo ----------- >> output.txt 2> nul
getmac /fo table /v >> output.txt 2> nul
echo. >> output.txt 2> nul
echo ARP TABLE >> output.txt 2> nul
echo ---------------- >> output.txt 2> nul
arp -a >> output.txt 2> nul
echo. >> output.txt 2> nul
echo IP CONFIG >> output.txt 2> nul
echo -------------- >> output.txt 2> nul
ipconfig /all>> output.txt 2> nul
echo. >> output.txt 2> nul
echo ROUTE  >> output.txt 2> nul
echo ----------- >> output.txt 2> nul
route print >> output.txt 2> nul
echo. >> output.txt 2> nul
echo NETWORK CONNECTIONS  >> output.txt 2> nul
echo ------------------------------------- >> output.txt 2> nul
netstat -ano >> output.txt 2> nul
echo. >> output.txt 2> nul
echo FIREWALL  >> output.txt 2> nul
echo -------------- >> output.txt 2> nul
netsh firewall show config >> output.txt 2> nul
echo. >> output.txt 2> nul
echo NETWORK SHARES  >> output.txt 2> nul
echo -------------------------- >> output.txt 2> nul
net share >> output.txt 2> nul
echo. >> output.txt 2> nul

echo =============== >> output.txt 2> nul
echo OS AND OS RELATED >> output.txt 2> nul
echo =============== >> output.txt 2> nul
echo. >> output.txt 2> nul
echo SYSTEM INFO  >> output.txt 2> nul
echo -------------------------- >> output.txt 2> nul
systeminfo >> output.txt 2> nul
echo. >> output.txt 2> nul
echo ENVIRONMENT VARIABLES  >> output.txt 2> nul
echo ------------------------------------- >> output.txt 2> nul
set >> output.txt 2> nul
echo. >> output.txt 2> nul
echo HOSTS AND NETWORK FILES  >> output.txt 2> nul
echo ------------------------------------- >> output.txt 2> nul
more C:\WINDOWS\System32\drivers\etc\hosts >> output.txt 2>nul
more C:\WINDOWS\System32\drivers\etc\networks >> output.txt 2>nul
echo. >> output.txt 2> nul
echo OTHER FILES  >> output.txt 2> nul
echo -------------------------- >> output.txt 2> nul
echo Boot.ini >> output.txt 2> nul
more c:\boot.ini >> output.txt 2>nul
echo. >> output.txt 2> nul

echo ========================= >> output.txt 2> nul
echo PROCESS, SERVICES, DRIVERS >> output.txt 2> nul
echo ========================= >> output.txt 2> nul
echo. >> output.txt 2> nul
echo RUNNING PROCESSES >> output.txt 2> nul
echo ------------------------------- >> output.txt 2> nul
tasklist /SVC >> output.txt 2> nul
echo. >> output.txt 2> nul
echo RUNNING SERVICES >> output.txt 2> nul
echo ------------------------------- >> output.txt 2> nul
sc queryex type=service >> output.txt 2> nul
echo. >> output.txt 2> nul
echo DRIVERS >> output.txt 2> nul
echo ------------- >> output.txt 2> nul
driverquery /fo table >> output.txt 2> nul
echo. >> output.txt 2> nul

cls
@echo Results saved to output.txt
pause










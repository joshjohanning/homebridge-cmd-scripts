schtasks /create /SC ONCE /TN dontsleep /TR "'D:\Backups\Joshs HDD\Programs\DontSleep_x64.exe' -bg" /ST 00:00
schtasks /run /TN dontsleep
schtasks /delete /TN dontsleep /F
pause


# Common Admin Tasks

> These are safe and reversible tasks admins do frequently.

## 1) Refresh IP & DNS
```bat
ipconfig /release
ipconfig /flushdns
ipconfig /renew
```

## 2) Check ports and the owning process
```bat
netstat -ano | more
REM Then match PID in Task Manager or:
tasklist | findstr <PID>
```

## 3) Clear Windows Update cache (safe)
```bat
net stop wuauserv
net stop bits
rd /s /q %windir%\SoftwareDistribution
net start wuauserv
net start bits
```

## 4) Reset network stack (requires reboot)
```bat
netsh winsock reset
netsh int ip reset
shutdown /r /t 5
```

## 5) Quick system summary to a file
```bat
systeminfo > %USERPROFILE%\Desktop\systeminfo.txt
```

## 6) Find what is using a port (PowerShell alternative)
```powershell
Get-NetTCPConnection -State Listen | Sort-Object LocalPort | Select-Object LocalAddress,LocalPort,OwningProcess
```

> Review commands before running in production; some require admin.

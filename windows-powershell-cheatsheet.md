# Windows PowerShell Cheatsheet

## Basics
```powershell
$PSVersionTable             # PowerShell version
Get-Help Get-Process -Online  # Open docs
Get-Command *network*       # Discover commands
Get-Module                  # Loaded modules
Get-History                 # Command history
Clear-Host                  # Clear screen (cls)

## System / Info
Get-ComputerInfo | Select-Object OsName,OsVersion,WindowsProductName
Get-CimInstance Win32_ComputerSystem | Select-Object Manufacturer,Model,TotalPhysicalMemory
Get-LocalUser
Get-LocalGroup

## Network
Get-NetIPConfiguration
Test-Connection 8.8.8.8 -Count 4
Resolve-DnsName microsoft.com
Get-NetTCPConnection -State Listen | Sort-Object LocalPort |
  Select-Object LocalAddress,LocalPort,OwningProcess
Get-Process -Id <PID>

## Files & Folders
Get-ChildItem                   # ls/dir
Set-Location C:\Temp            # cd
New-Item -ItemType Directory Logs
Copy-Item source.txt dest.txt
Move-Item old.txt new.txt
Remove-Item .\Temp -Recurse

## Services & Processes
Get-Service
Restart-Service Spooler
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
Stop-Process -Id <PID> -Force

## Users / Groups (local)
Get-WindowsUpdateLog
DISM /Online /Cleanup-Image /CheckHealth
sfc /scannow

## Windows Update & Health (safe)
Get-WindowsUpdateLog
DISM /Online /Cleanup-Image /CheckHealth
sfc /scannow

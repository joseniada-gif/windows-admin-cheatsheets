# 🧠 Windows PowerShell Cheatsheet

A concise and modern reference for administrators and power users.  
Use this to perform everyday management tasks with PowerShell quickly and safely.

---

## ⚙️ **Basics**
```powershell
$PSVersionTable              # PowerShell version info
Get-Help Get-Process -Online # Open documentation online
Get-Command *network*        # Search for commands
Get-Module                   # List loaded modules
Get-History                  # View command history
Clear-Host                   # Clear screen (alias: cls)
```

---

## 💻 **System & Info**
```powershell
Get-ComputerInfo | Select-Object OsName,OsVersion,WindowsProductName
Get-CimInstance Win32_ComputerSystem | Select-Object Manufacturer,Model,TotalPhysicalMemory
Get-LocalUser                  # List local users
Get-LocalGroup                 # List local groups
Get-ExecutionPolicy -List      # View script execution policies
```

---

## 🌐 **Network**
```powershell
Get-NetIPConfiguration                     # IP info (IPv4/6, Gateway, DNS)
Test-Connection 8.8.8.8 -Count 4            # Ping test
Resolve-DnsName example.com                 # DNS lookup
Get-NetTCPConnection -State Listen | Sort-Object LocalPort |
  Select-Object LocalAddress,LocalPort,OwningProcess
Get-Process -Id <PID>                       # Identify process by PID
Get-NetAdapter | Select Name,Status,LinkSpeed
```

---

## 📁 **Files & Folders**
```powershell
Get-ChildItem                   # List directory contents (alias: dir, ls)
Set-Location C:\Temp            # Change directory (alias: cd)
New-Item -ItemType Directory Logs
Copy-Item source.txt dest.txt
Move-Item old.txt new.txt
Remove-Item .\Temp -Recurse -Force
Get-Content file.txt | more
```

---

## 🧩 **Services & Processes**
```powershell
Get-Service | Sort-Object Status,Name
Restart-Service Spooler
Stop-Service -Name "Print Spooler" -Force
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
Stop-Process -Id <PID> -Force
Start-Job { Get-Process }                   # Run background job
Receive-Job -Id 1                           # Retrieve job output
```

---

## 👥 **Users & Groups (Local)**
```powershell
New-LocalUser "Alice" -Password (Read-Host -AsSecureString)
Add-LocalGroupMember -Group "Administrators" -Member "Alice"
Get-LocalUser | Format-Table Name,Enabled,LastLogon
Disable-LocalUser "Guest"
```

---

## 🔒 **Security & Policies**
```powershell
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Get-EventLog -LogName Security -Newest 10
Get-WmiObject Win32_Product | Select-Object Name,Version
```

---

## 🔁 **Updates & Health**
```powershell
Get-WindowsUpdateLog
sfc /scannow
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /RestoreHealth
Restart-Computer -Force
```

---

## 🧰 **Quick Reference Table**
| Task | Command |
|------|----------|
| View IP quickly | `(Get-NetIPAddress).IPAddress` |
| Open Services | `services.msc` |
| Open Event Viewer | `eventvwr` |
| Save service list to file | `Get-Service | Out-File C:\Temp\services.txt` |
| Find admin cmdlets | `Get-Command -Module Microsoft.PowerShell.LocalAccounts` |

---

## 💡 **Tips**
- Use `Ctrl + J` in Windows Terminal for snippet suggestions.
- Customize PowerShell by editing your profile:
  ```powershell
  notepad $PROFILE
  ```
- Add shortcuts and aliases for frequent tasks.

---

**Author:** José Niada  
**License:** MIT — Free to share and modify.

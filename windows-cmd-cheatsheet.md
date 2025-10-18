# Windows CMD Cheatsheet

> Open Command Prompt: Press `Win`, type **cmd**, press Enter.

## System & Info
- `ver` — Show Windows version
- `systeminfo` — Detailed OS & hardware info
- `hostname` — Computer name
- `whoami` — Current user
- `echo %USERNAME%` — Username (env var)
- `echo %COMPUTERNAME%` — Machine name

## Network
- `ipconfig /all` — Full IP config
- `ipconfig /flushdns` — Flush DNS cache
- `ping 8.8.8.8` — Test connectivity
- `tracert 8.8.8.8` — Route to host
- `nslookup example.com` — DNS lookup
- `netstat -ano` — Ports & PIDs
- `arp -a` — ARP table

## Files & Folders
- `dir` — List files
- `cd` — Change directory
- `mkdir NewFolder` — Create folder
- `copy source.txt dest.txt` — Copy
- `move old.txt new.txt` — Move/rename
- `del file.txt` — Delete file
- `rmdir /s TempFolder` — Remove folder tree (careful)

## Processes & Services
- `tasklist` — Running processes
- `taskkill /F /PID 1234` — Kill by PID (force)
- `sc query type= service` — List services
- `sc start Spooler` — Start service
- `sc stop Spooler` — Stop service

## Users & Groups (local)
- `net user` — List users
- `net user Alice /add` — Add user
- `net localgroup administrators Alice /add` — Add to admins
- `net localgroup` — List local groups

## Disks
- `chkdsk C:` — Check disk
- `wmic logicaldisk get name,freespace,size` — Disk sizes
- `diskpart` — Disk utility (admin; be careful)

## Environment & Variables
- `set` — Show environment
- `set PATH` — Show PATH
- `setx MY_VAR myvalue` — Persist env var

## Misc
- `cls` — Clear screen
- `time` / `date` — Show/set
- `shutdown /r /t 0` — Restart immediately

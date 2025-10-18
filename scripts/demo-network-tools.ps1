<#  demo-network-tools.ps1
    Safe demo showing basic network diagnostics
    Run: Right-click → Run with PowerShell (or execute in a PS window)
#>

Write-Host "=== IP Configuration (short) ===" -ForegroundColor Cyan
Get-NetIPConfiguration | Format-Table InterfaceAlias,IPv4Address,IPv6Address -AutoSize

Write-Host "`n=== Flush DNS cache ===" -ForegroundColor Cyan
ipconfig /flushdns | Out-Null
Write-Host "DNS cache flushed."

Write-Host "`n=== Ping test (8.8.8.8) ===" -ForegroundColor Cyan
Test-Connection -ComputerName 8.8.8.8 -Count 4 | Select-Object Address,Latency,IPv4Address,IPv6Address

Write-Host "`n=== Traceroute to 8.8.8.8 ===" -ForegroundColor Cyan
tracert 8.8.8.8

Write-Host "`nDone." -ForegroundColor Green
Read-Host "Press Enter to exit"

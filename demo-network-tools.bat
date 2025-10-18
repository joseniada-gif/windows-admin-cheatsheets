@echo off
:: demo-network-tools.bat
:: Safe demo showing basic network diagnostics

echo === IP Configuration (short) ===
ipconfig | findstr /R "IPv4 IPv6 Adapter"

echo.
echo === Flush DNS cache ===
ipconfig /flushdns

echo.
echo === Ping test (8.8.8.8) ===
ping -n 4 8.8.8.8

echo.
echo === Traceroute to 8.8.8.8 ===
tracert 8.8.8.8

echo.
echo Done. Press any key to exit...
pause >nul

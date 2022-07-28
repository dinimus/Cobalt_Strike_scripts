@echo off
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq chisel86.exe" /FO LIST ^| findstr /B "PID:"
') do (
   taskkill /PID %%K /F
)
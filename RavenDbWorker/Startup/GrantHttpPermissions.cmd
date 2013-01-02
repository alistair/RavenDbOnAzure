@echo off
REM Nicht im Emulator ausfuehren
if "%TestIsEmulated%"=="true" goto :EOF

netsh http delete urlacl url=http://+:8080/
netsh http add urlacl url=http://+:8080/ user=Everyone >> log.txt 2>> err.txt
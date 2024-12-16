@echo off
:: Set the console code page to UTF-8
chcp 65001 >nul
:: Ensure the script runs as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrator privileges.
    echo Please run this script as an administrator.
    echo 需要管理员权限才能运行
    pause
    exit /b
)

:: Set the target directory
set "target=%~dp0"

:: Remove inbound and outbound rules for each .exe file in the directory
for /r "%target%" %%f in (*.exe) do (
    setlocal enabledelayedexpansion

    :: Construct rule names with the file path
    set "rule_in=Block %%~nxf Inbound into %%~f"
    set "rule_out=Block %%~nxf Outbound into %%~f"

    echo Removing inbound rule: !rule_in!
    netsh advfirewall firewall delete rule name="!rule_in!" >nul

    echo Removing outbound rule: !rule_out!
    netsh advfirewall firewall delete rule name="!rule_out!" >nul

    endlocal
)
echo Unblocking completed.
echo 移除防火墙完成
pause

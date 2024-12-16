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

:: Set the target directory to the script's current path
set "target=%~dp0"

:: Block inbound and outbound for each .exe file in the directory
for /r "%target%" %%f in (*.exe) do (
    setlocal enabledelayedexpansion

    set "rule_out=Block %%~nxf Outbound into %%~f"
    set "rule_in=Block %%~nxf Inbound into %%~f"

    :: Check if outbound rule exists
    netsh advfirewall firewall show rule name="!rule_out!" >nul 2>&1
    if !errorlevel! neq 0 (
        echo Adding outbound rule: %%~f
        netsh advfirewall firewall add rule name="!rule_out!" dir=out program="%%~f" action=block enable=yes
    ) else (
        echo Outbound rule already exists for %%~f
    )

    :: Check if inbound rule exists
    netsh advfirewall firewall show rule name="!rule_in!" >nul 2>&1
    if !errorlevel! neq 0 (
        echo Adding inbound rule: %%~f
        netsh advfirewall firewall add rule name="!rule_in!" dir=in program="%%~f" action=block enable=yes
    ) else (
        echo Inbound rule already exists for %%~f
    )

    endlocal
)

echo Blocking completed.
echo 添加防火墙完成
pause

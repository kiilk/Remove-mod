::Verison 1.0.3.2.1 
::Redstone 1
:: ..hmmm
@echo off
::--laod
color 2F
mode con lines=30 cols=60
:://

::Module
cd C:\
cd MCLdownload
cd game
cd .minecraft
cd mods
title Remove filter and anti-addiction Project Redstone by kiilk

:memu
cls
echo [1]自动检查mc并清除mod[简单]
echo [2]结束mc
echo [3]另外一种清除方法[难度中等]
echo [4]查看更新了什么
echo [5]查看kiilk的github地址
echo 注：输入1，会自动检查mc
echo 自动清除mod成功率已提高！
echo Please report issuse 
set /p yn=输入数字:
if /i "%yn%"=="1"  goto 1
if /i "%yn%"=="2" goto 2
if /i "%yn%"=="3" goto 人工
if /i "%yn%"=="4" goto 更新日志
if /i "%yn%"=="5" goto github
if not "%yn%"=="1*2*3*" goto error

:1
::检查mc
echo Checking the Minecraft process...
goto tasklist
:tasklist
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist) else (goto 清理mod)

:清理mod
del /s /f /q 4618419806087972149@3@15.jar
::del /s /f /q 4618827437296985101@3@15.jar
echo  Complete
ping -n 2 127.0.0.1>nul
if exist "C:\MCLdownload\game\.minecraft\mods\4618419806087972149@3@15.jar"  (echo Failed) else (echo Successful!)
pause
goto memu

:2
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto 3)

:3
taskkill /f /im javaw.exe
ping -n 2 127.0.0.1>nul
echo complete
pause
goto memu

:error
echo Error
pause
goto memu

:mcbu
echo "javaw.exe"tan90°
pause
goto memu

:人工 
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto 人工2)

:人工2
del /s /f /q 4618419806087972149@3@15.jar
::del /s /f /q 4618827437296985101@3@15.jar

pause
goto memu

:更新日志
echo 主要增加了自动清除mod的成功性，同时也变卡了。。
pause
goto memu

:github
echo github.com/kiilk/Remove-mod
pause
goto memu

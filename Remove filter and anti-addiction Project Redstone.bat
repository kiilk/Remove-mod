::Verison 1.0.3.2 
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
echo [1]�Զ����mc�����mod[��]
echo [2]����mc
echo [3]����һ���������[�Ѷ��е�]
echo [4]�鿴������ʲô
echo [5]�鿴kiilk��github��ַ
echo ע������1�����Զ����mc
echo �Զ����mod�ɹ�������ߣ�
echo Please report issuse 
set /p yn=��������:
if /i "%yn%"=="1"  goto 1
if /i "%yn%"=="2" goto 2
if /i "%yn%"=="3" goto �˹�
if /i "%yn%"=="4" goto ������־
if /i "%yn%"=="5" goto github
if not "%yn%"=="1*2*3*" goto error

:1
::���mc
echo Checking the Minecraft process...
goto tasklist
:tasklist
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist) else (goto ����mod)

:����mod
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
echo "javaw.exe"process not exist..
pause
goto memu

:�˹� 
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto �˹�2)

:�˹�2
del /s /f /q 4618419806087972149@3@15.jar
::del /s /f /q 4618827437296985101@3@15.jar

pause
goto memu

:������־
echo ��Ҫ�������Զ����mod�ĳɹ��ԣ�ͬʱҲ�俨�ˡ���
pause
goto memu

:github
echo github.com/kiilk/Remove-mod
pause
goto memu
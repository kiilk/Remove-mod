::�˰汾Ϊ1.0.3.2 kiilk��������hacker
::Redstone 1
:: ..hmmm �����˰ɣ�
@echo off
::�������еĲ�������laod
color 2F
mode con lines=30 cols=60
:://
::����Ŀ¼
cd C:\
cd MCLdownload
cd game
cd .minecraft
cd mods
title Remove �������ͷ����� Project Redstone by kiilk
:memu
cls
echo ��1���mod
echo ��2����mc
echo ��3�˹����mod
echo ��4�鿴������ʲô
echo ע������1�����Զ����mc
echo �Զ����mod�ɹ�������ߣ�
echo �뷴������Issuse :)
set /p yn=��������:
if /i "%yn%"=="1"  goto 1
if /i "%yn%"=="2" goto 2
if /i "%yn%"=="3" goto �˹�
if /i "%yn%"=="4" goto ������־
if not "%yn%"=="1*2*3" goto error
:1
::���mc
echo ���ڼ��mc
goto tasklist
:tasklist
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist) else (goto ��ʷ�Ľ��̣�������)
:��ʷ�Ľ��̣�������
echo ���ڵȴ�������Ϸ
goto tasklist2
:tasklist2
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist2) else (goto ����mod)
:����mod
del /s /f /q 4618419806087972149@3@15.jar
::del /s /f /q 4618827437296985101@3@15.jar
echo ���ɹ����ɹ�
echo �Ե�
echo ע:����ļ��治����
ping -n 2 127.0.0.1>nul
if exist "C:\MCLdownload\game\.minecraft\mods\4618419806087972149@3@15.jar"  (echo ʧ��,����mc�Ѽ���mod) else (echo ��������ɹ�)
pause
goto memu
:2
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto 3)
:3
taskkill /f /im javaw.exe
ping -n 2 127.0.0.1>nul
echo ����ɡ���
pause
goto memu
:error
echo ��������֣�������
pause
goto memu
:mcbu
echo mc������
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
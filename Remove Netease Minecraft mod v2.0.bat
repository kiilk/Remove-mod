::Verison 1.0.4
::Redstone 1
:: ..hmmm
@echo off
::--laod
color 2F
mode con lines=30 cols=60
:://

::Module
C:
cd C:\
cd MCLdownload
cd game
cd .minecraft
cd mods
title Remove Netease mod v2.0 by kiilk

:memu
cls
echo [1]�Զ����mc�����mod[��]
echo [2]����mc
echo [3]����һ���������[�Ѷ��е�]
echo [4]�鿴������ʲô
echo [5]�鿴kiilk��github��ַ
echo [6]�鿴mod�б�
echo ע������1�����Զ����mc
echo �Զ����mod�ɹ�������ߣ�
echo ��ر�����
set /p yn=��������:
if /i "%yn%"=="1"  goto 1
if /i "%yn%"=="2" goto 2
if /i "%yn%"=="3" goto �˹�
if /i "%yn%"=="4" goto ������־
if /i "%yn%"=="5" goto github
if /i "%yn%"=="6" goto mod list
if not "%yn%"=="1*2*3*" goto error

:1
::���mc
echo ���mc������...
goto tasklist
:tasklist
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist) else (goto ����mod)

:����mod
del /s /f /q 4619774556351054392@3@15.jar
REM delǰ�������ð�ſ�ȥ��
::del /s /f /q 4618827437296985101@3@15.jar
REM //
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
echo "javaw.exe"������
pause
goto memu

:�˹� 
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto �˹�2)

:�˹�2
del /s /f /q 4619774556351054392@3@15.jar
::del /s /f /q 4619774556351054392@3@15.jar

pause
goto memu

:������־
echo �޸���һЩbug
pause
goto memu

:github
echo github.com/kiilk/Remove-mod
pause
goto memu

:mod list
set a=0
for %%i in (*.jar) do (
call echo %%i
set /a a+=1
)
echo ��%a%��mod
if exist "4619774556351054392@3@15.jar" (echo ����) else (������)
if exist "4619774556351054392@3@15.jar" (echo ����) else (������)
pause
goto memu 
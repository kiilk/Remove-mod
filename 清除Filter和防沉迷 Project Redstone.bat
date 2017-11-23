::此版本为1.0.3.2 kiilk反对所有hacker
::Redstone 1
:: ..hmmm 会用了吧？
@echo off
::下面两行的参数来自laod
color 2F
mode con lines=30 cols=60
:://
::进入目录
cd C:\
cd MCLdownload
cd game
cd .minecraft
cd mods
title Remove 过滤器和防沉迷 Project Redstone by kiilk
:memu
cls
echo 按1清除mod
echo 按2结束mc
echo 按3人工清除mod
echo 按4查看更新了什么
echo 注：输入1，会自动检查mc
echo 自动清除mod成功率已提高！
echo 请反馈给我Issuse :)
set /p yn=输入数字:
if /i "%yn%"=="1"  goto 1
if /i "%yn%"=="2" goto 2
if /i "%yn%"=="3" goto 人工
if /i "%yn%"=="4" goto 更新日志
if not "%yn%"=="1*2*3" goto error
:1
::检查mc
echo 正在检测mc
goto tasklist
:tasklist
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist) else (goto 历史的进程（滑稽）)
:历史的进程（滑稽）
echo 正在等待启动游戏
goto tasklist2
:tasklist2
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto tasklist2) else (goto 清理mod)
:清理mod
del /s /f /q 4618419806087972149@3@15.jar
::del /s /f /q 4618827437296985101@3@15.jar
echo 检查成功不成功
echo 稍等
echo 注:检测文件存不存在
ping -n 2 127.0.0.1>nul
if exist "C:\MCLdownload\game\.minecraft\mods\4618419806087972149@3@15.jar"  (echo 失败,可能mc已加载mod) else (echo 可能清理成功)
pause
goto memu
:2
tasklist|find /i "javaw.exe"
if errorlevel 1 (goto mcbu) else (goto 3)
:3
taskkill /f /im javaw.exe
ping -n 2 127.0.0.1>nul
echo 已完成。。
pause
goto memu
:error
echo 错误的数字，别乱输
pause
goto memu
:mcbu
echo mc不存在
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
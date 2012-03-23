@echo off

set ARCH=%1

if "%ARCH%"=="" set ARCH=32

md VC_%ARCH%

cd VC_%ARCH%

set BOOST_ROOT=%BOOST%\%ARCH%

if %ARCH%==32 cmake .. -G "Visual Studio 11"
if %ARCH%==64 cmake .. -G "Visual Studio 11 Win64"

cd ..
@echo off

set ARCH=%1

if "%ARCH%"=="" set ARCH=32

md GCC_%ARCH%

cd GCC_%ARCH%

set BOOST_ROOT=%BOOST%\%ARCH%

set oldpath=%path%

set path=%MINGW%\%ARCH%\bin;%path%

cmake .. -G "MinGW Makefiles"

set path=%oldpath%

cd ..
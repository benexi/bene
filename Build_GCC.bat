@echo off

set ARCH=%1

if "%ARCH%"=="" set ARCH=32

cd GCC_%ARCH%

set oldpath=%path%

set path=%MINGW%\%ARCH%\bin;%path%

mingw32-make install

set path=%oldpath%

cd ..
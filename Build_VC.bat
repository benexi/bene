@echo off

set ARCH=%1

if "%ARCH%"=="" set ARCH=32

set SOLUTION=%2

if "%SOLUTION%"=="" set SOLUTION=Debug

"%VS110COMNTOOLS%..\IDE\devenv" VC_%ARCH%\Project.sln /build "%SOLUTION%" /project "INSTALL"
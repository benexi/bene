@echo off

set ARCH=%1

if "%ARCH%"=="" set ARCH=32

rmdir /s /q Bin_VC_%ARCH%
rmdir /s /q Bin_GCC_%ARCH%

rmdir /s /q Lib_VC_%ARCH%
rmdir /s /q Lib_GCC_%ARCH%

rmdir /s /q VC_%ARCH%
rmdir /s /q GCC_%ARCH%

del /F /S /Q *.aps
del /F /S /Q *.sdf
del /F /S /Q *.vcproj
del /F /S /Q /A H *.suo
del /F /S /Q /A H *.opensdf
del /F /S /Q *.user
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\bin$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\ipch$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\obj$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\x64$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\Debug$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\Debug_User$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\Release$"`) do rmdir /s /q "%%a"
for /f "usebackq tokens=1* delims=/" %%a in (`dir /s /b /a:d ^| findstr /i "%opath%JW.*\\Release_User$"`) do rmdir /s /q "%%a"
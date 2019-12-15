@echo off
pushd %~dp0
cmd /c "buildSK.bat"
cmd /c "buildS3.bat"
if exist ..\sonic3k.bin move ..\sonic3k.bin ..\sonic3k.prev.bin
copy /b /y ..\skbuilt.bin+..\s3built.bin ..\sonic3k.bin
popd
pause
@echo off

set "outputFile=tree.txt"
set "root=%~dp0"

echo Current Directory: %root%>> %outputFile%
echo.>> %outputFile%
echo Files in Current Directory:>> %outputFile%
for %%F in ("%root%*") do (
    if not "%%~nxF"=="%~nx0" (
        echo %%~nxF>> %outputFile%
    )
)
echo.>> %outputFile%
echo Subdirectories and Files in Current Directory:>> %outputFile%
for /d %%D in ("%root%*") do (
    echo Subdirectory: %%~nxD>> %outputFile%
    echo Files:>> %outputFile%
    for %%F in ("%%D\*") do (
        echo %%~nxF>> %outputFile%
    )
    echo.>> %outputFile%
)

exit /b
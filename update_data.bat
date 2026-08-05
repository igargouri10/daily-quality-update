@echo off
setlocal
if "%~1"=="" (
  echo Drag the newest Excel workbook onto this file, or run: update_data.bat "C:\path\to\workbook.xlsx"
  pause
  exit /b 1
)
copy /Y "%~1" "%~dp0data\qc_raw_data.xlsx" >nul
if errorlevel 1 (
  echo The workbook could not be copied.
  pause
  exit /b 1
)
echo Workbook replaced successfully.
echo Now commit and push the change to publish it.
pause

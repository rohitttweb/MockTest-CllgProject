@echo off

REM Get the current folder path
set "CURRENT_FOLDER=%CD%"
REM Set the path to the XAMPP installation folder
set "XAMPP_PATH=C:\xampp"

REM Check if the XAMPP installation folder exists
if not exist "%XAMPP_PATH%" (
    echo XAMPP installation folder not found.
    pause
    exit /b 1
)


REM Check if Node.js is installed
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is not installed. Please install Node.js and try again.
    pause
    exit /b 1
)

REM Check if npm is installed
where npm >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: npm is not installed. Please install npm and try again.
    pause
    exit /b 1
)

REM Check if node_modules folder exists
if not exist node_modules (
    echo node_modules folder not found. Installing dependencies...
    npm install
    pause
    exit /b 1

)

REM Open a Command Prompt window in the current folder and execute a command in it
if exist node_modules (
start cmd /k "cd /d "%CURRENT_FOLDER%" && echo npm start | cmd"
timeout /t 6
start http://localhost:3000 
)

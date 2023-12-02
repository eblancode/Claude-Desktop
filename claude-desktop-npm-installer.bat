@echo off
PAUSE
SETLOCAL

:: Check if npm is installed
npm --version > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO npm is not installed. Please install Node.js (which includes npm) from https://nodejs.org/
	PAUSE
    GOTO :end
)

:: Run npm run dev
ECHO Running 'npm run dev'...
npm run dev
IF %ERRORLEVEL% NEQ 0 (
    ECHO There was an error running 'npm run dev'.
	PAUSE
    GOTO :end
)

ECHO 'npm run dev' completed successfully.
PAUSE

:end
ENDLOCAL

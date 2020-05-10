echo off

:: date
SET @TodayYear=%date:~0,4%
SET @TodayMonth=%date:~5,2%
SET @TodayDay=%date:~8,2%
SET @weekday=%date:~11,2%

:: time format for two digit.
SET @hour=%time:~0,2%
IF "%@hour:~0,1%" == " " SET @hour=0%@hour:~1,1%
SET @min=%time:~3,2%
IF "%@min:~0,1%" == " " SET @min=0%@min:~1,1%
SET @secs=%time:~6,2%
IF "%@secs:~0,1%" == " " SET @secs=0%@secs:~1,1%

:: input message
set arg1=%*

:: print out to check
echo %@TodayYear%-%@TodayMonth%-%@TodayDay%(%@weekday%)T%@hour%:%@min%:%@secs% %arg1%

pause

git add .
git commit -m "%@TodayYear%-%@TodayMonth%-%@TodayDay%(%@weekday%)T%@hour%:%@min%:%@secs% %arg1%"
git push

pause

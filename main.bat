@echo off

:startloop

set /p n1="Input first number: "
set /p op="Input Operator: "
set /p n2="Input second number: "

if %op%==+ (
	set /a ans=%n1%+%n2%
)
if %op%==- (
	set /a ans=%n1%-%n2%
)
if %op%==* (
	set /a ans=%n1%*%n2%
)
if %op%==/ (
	set /a ans=%n1%/%n2%
)

echo %n1% %op% %n2% = %ans%

set /p retry="Retry? y/n: "
if Not %retry%==y goto exitloop
goto startloop

:exitloop

Rem Deleting all used vars
set n1=
set op=
set n2=
set retry=
set ans=

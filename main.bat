@echo off

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
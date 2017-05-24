@echo off

if "%1"=="" GOTO :build
if "%1"=="notest" GOTO :build_notest

if "%1"=="restore" GOTO :restore
if "%1"=="clean" GOTO :restore

GOTO :build

:restore
msbuild build.proj /target:%1 /p:GitBranch=%2
GOTO :EOF

:build
set path=%path%;C:\temp\selenium
set test_browser=firefox
set domain_url=https://localhost:44399
set site_url=/ontarget

set config=Debug

msbuild build.proj /target:RunTests /p:Configuration=%config%

copy TestFSConfig.config test\FinancialSimplicity.UI.Tests\bin\%config%\net462
rem test\FinancialSimplicity.UI.Tests\bin\%config%\net462\FinancialSimplicity.UI.Tests.exe %1
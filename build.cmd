@echo off

if "%1"=="" GOTO :build
if "%1"=="notest" GOTO :build_notest

if "%1"=="restore" GOTO :restore
if "%1"=="clean" GOTO :restore

GOTO :build

:restore
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" build.proj /target:%1 /p:GitBranch=%2
GOTO :EOF

:build
set path=%path%;C:\temp\selenium
set test_browser=firefox
set site_url=/ontarget

set config=Debug

"C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" build.proj /target:RunTests /p:Configuration=%config%

if "%1"=="buildonly" GOTO :EOF
if "%1"=="azure" GOTO :azureconfig
GOTO :localconfig

:localconfig
copy TestFSConfig.config test\FinancialSimplicity.UI.Tests\bin\%config%\net462
set domain_url=https://localhost:44399
test\FinancialSimplicity.UI.Tests\bin\%config%\net462\FinancialSimplicity.UI.Tests.exe %1
GOTO :EOF

:azureconfig
copy AzureFSConfig.config test\FinancialSimplicity.UI.Tests\bin\%config%\net462\TestFSConfig.config
set domain_url=http://uitestvm.australiaeast.cloudapp.azure.com
test\FinancialSimplicity.UI.Tests\bin\%config%\net462\FinancialSimplicity.UI.Tests.exe %2
GOTO :EOF

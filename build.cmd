@echo off

set path=%path%;C:\temp\selenium
set test_browser=firefox
set domain_url=https://localhost:53001
set site_url=/fsc

set config=Debug

msbuild build.proj /target:RunTests /p:Configuration=%config%

test\FinancialSimplicity.UI.Tests\bin\%config%\net462\FinancialSimplicity.UI.Tests.exe %1
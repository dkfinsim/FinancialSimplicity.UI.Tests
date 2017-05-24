# Create databases with minimum required configuration
Invoke-Sqlcmd -ServerInstance "localhost" -Query "CREATE DATABASE ui_test_auth"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_auth" -Query "CREATE USER [ASPNET] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]"
Invoke-Sqlcmd -ServerInstance "localhost" -Query "CREATE DATABASE ui_test_main"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_main" -Query "CREATE USER [ASPNET] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]"
Invoke-Sqlcmd -ServerInstance "localhost" -Query "CREATE DATABASE ui_test_history"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_history" -Query "CREATE USER [ASPNET] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]"
Invoke-Sqlcmd -ServerInstance "localhost" -Query "CREATE DATABASE ui_test_upload"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_upload" -Query "CREATE USER [ASPNET] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_auth" -InputFile "D:\CreateAuthDatabaseWithData.sql"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_main" -InputFile "D:\schema.sql"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_main" -InputFile "D:\CreateDefaultData.sql"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_history" -InputFile "D:\historySchema.sql"
Invoke-Sqlcmd -ServerInstance "localhost" -Query "ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]"
Invoke-Sqlcmd -ServerInstance "localhost" -Database "ui_test_main" -Query "INSERT INTO [investment_upload] ([investment_upload_id],[investment_upload_name],[upload_type],[user_control],[pe_user_control]) VALUES (3,'Generic File Upload','Ima.ServiceAgents.GenericInvestmentAgent,Ima.ServiceAgents','InvestmentUploadControls/GenericFileUpload.ascx',NULL)"

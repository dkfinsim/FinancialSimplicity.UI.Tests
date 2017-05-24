/****** Object:  Table [dbo].[domain_event]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[domain_event](
	[event_id] [int] NOT NULL,
	[aggregate_id] [nvarchar](max) NULL,
	[user_id] [nvarchar](101) NULL,
	[date_created] [datetime] NOT NULL,
	[aggregate_type] [varchar](256) NOT NULL,
	[serializer_type] [varchar](256) NOT NULL,
	[event_type] [varchar](128) NOT NULL,
	[data] [nvarchar](max) NULL,
 CONSTRAINT [PK_event_id] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[domain]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domain](
	[domain_id] [nvarchar](50) NOT NULL,
	[domain_name] [nvarchar](50) NOT NULL,
	[max_users] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_domain] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[command_error]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[command_error](
	[command_data] [varchar](max) NOT NULL,
	[command_type] [varchar](256) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[domain_id] [varchar](50) NOT NULL,
	[response_id] [uniqueidentifier] NOT NULL,
	[response_data] [nvarchar](max) NOT NULL,
	[response_status] [smallint] NOT NULL,
	[serializer_type] [varchar](256) NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_command_response_id] PRIMARY KEY CLUSTERED 
(
	[response_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hibernate_unique_key]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_unique_key](
	[next_hi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [nvarchar](101) NOT NULL,
	[logon_name] [nvarchar](50) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[first_names] [nvarchar](100) NOT NULL,
	[family_name] [nvarchar](50) NOT NULL,
	[logon_password] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[secret_question1] [nvarchar](255) NOT NULL,
	[secret_answer1] [nvarchar](127) NOT NULL,
	[secret_question2] [nvarchar](255) NOT NULL,
	[secret_answer2] [nvarchar](127) NOT NULL,
	[is_approved] [bit] NOT NULL,
	[is_locked_out] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[last_login_date] [datetime] NOT NULL,
	[last_password_changed] [datetime] NOT NULL,
	[last_lockout_date] [datetime] NOT NULL,
	[failed_password_count] [int] NOT NULL,
	[failed_password_window_start] [datetime] NOT NULL,
	[failed_password_answer_count] [int] NOT NULL,
	[failed_password_answer_window_start] [datetime] NOT NULL,
	[validation_checksum] [nvarchar](100) NOT NULL,
	[comment] [ntext] NULL,
	[enforce_password_change] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRole]
(
	@role_name nvarchar(50),
	@Original_role_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
UPDATE role SET role_name = @role_name WHERE (role_name = @Original_role_name);
	SELECT role_name FROM role WHERE (role_name = @role_name)
GO
/****** Object:  StoredProcedure [dbo].[UpdateDomain]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDomain]
(
	@domain_id nvarchar(50),
	@domain_name nvarchar(50),
	@max_users nvarchar(50),
	@Original_domain_id nvarchar(50),
	@Original_domain_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
UPDATE domain SET domain_id = @domain_id, 
domain_name = @domain_name, max_users = @max_users WHERE (domain_id = @Original_domain_id);
	SELECT * FROM domain WHERE (domain_id = @domain_id)
GO
/****** Object:  StoredProcedure [dbo].[InsertRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertRole]
(
	@role_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO role(role_name) VALUES (@role_name);
	SELECT role_name FROM role WHERE (role_name = @role_name)
GO
/****** Object:  StoredProcedure [dbo].[InsertDomain]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDomain]
(
	@domain_id nvarchar(50),
	@domain_name nvarchar(50),
	@max_users nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO domain(domain_id, domain_name, max_users) VALUES (@domain_id, @domain_name, @max_users);
	SELECT * FROM domain WHERE (domain_id = @domain_id);
GO
/****** Object:  StoredProcedure [dbo].[FindAllRoles]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindAllRoles]
AS
	SET NOCOUNT ON;
SELECT role_name FROM role
GO
/****** Object:  StoredProcedure [dbo].[FindAllDomains]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindAllDomains]
AS
	SET NOCOUNT ON;
SELECT domain_id, domain_name FROM domain
GO
/****** Object:  StoredProcedure [dbo].[FindDomainByName]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindDomainByName]
(
	@domainName nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT * FROM domain WHERE domain_name = @domainName;
GO
/****** Object:  StoredProcedure [dbo].[FindDomainById]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[FindDomainById]
(
	@domainId nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT * FROM domain WHERE domain_id = @domainId;
GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRole]
(
	@Original_role_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
DELETE FROM role WHERE (role_name = @Original_role_name)
GO
/****** Object:  StoredProcedure [dbo].[DeleteDomain]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDomain]
(
	@Original_domain_id nvarchar(50),
	@Original_domain_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
DELETE FROM domain WHERE (domain_id = @Original_domain_id) AND (domain_name = @Original_domain_name)
GO
/****** Object:  StoredProcedure [dbo].[DoesUserNameExist]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[DoesUserNameExist]
(
	@domainId nvarchar(50),
	@logonName nvarchar(50)
)
AS
SELECT COUNT(*) FROM [user] WHERE domain_id = @domainId AND logon_name = @logonName;
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[DeleteUser]
(
	@Original_user_id nvarchar(101)
)
AS
	SET NOCOUNT OFF;
DELETE FROM [user] WHERE (user_id = @Original_user_id)
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[InsertUser]
(
	@user_id nvarchar(101),
	@logon_name nvarchar(50),
	@domain_id nvarchar(50),
	@first_names nvarchar(100),
	@family_name nvarchar(50),
	@logon_password nvarchar(100),
	@email nvarchar(100),
	@secret_question1 nvarchar(255),
	@secret_answer1 nvarchar(127),
	@secret_question2 nvarchar(255),
	@secret_answer2 nvarchar(127),
	@is_approved bit,
	@is_locked_out bit,
	@create_date datetime,
	@last_login_date datetime,
	@last_password_changed datetime,
	@last_lockout_date datetime,
	@failed_password_count int,
	@failed_password_window_start datetime,
	@failed_password_answer_count int,
	@failed_password_answer_window_start datetime,
	@validation_checksum nvarchar(100),
	@comment ntext,
	@enforce_password_change bit
)
AS
	SET NOCOUNT OFF;
INSERT INTO [user] (user_id, logon_name, domain_id, first_names, family_name, logon_password, email, secret_question1, secret_answer1, secret_question2, secret_answer2, is_approved, is_locked_out, create_date, last_login_date, last_password_changed, last_lockout_date, failed_password_count, failed_password_window_start, failed_password_answer_count, failed_password_answer_window_start, validation_checksum, comment, enforce_password_change) VALUES 
(@user_id, @logon_name, @domain_id, @first_names, @family_name, @logon_password, @email, @secret_question1, @secret_answer1, @secret_question2, @secret_answer2, @is_approved, @is_locked_out, @create_date, @last_login_date, @last_password_changed, @last_lockout_date, @failed_password_count, @failed_password_window_start, @failed_password_answer_count, @failed_password_answer_window_start, @validation_checksum, @comment, @enforce_password_change);
GO
/****** Object:  StoredProcedure [dbo].[FindAllUsers]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindAllUsers]
AS
	SET NOCOUNT ON;
SELECT user_id, logon_name, domain_id, first_names, family_name, logon_password, email, secret_question1, secret_answer1, secret_question2, secret_answer2, is_approved, is_locked_out, create_date, last_login_date, last_password_changed, last_lockout_date, failed_password_count, failed_password_window_start, failed_password_answer_count, failed_password_answer_window_start, validation_checksum, comment FROM [user]
GO
/****** Object:  StoredProcedure [dbo].[FindUsersByEmail]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUsersByEmail]
(
	@email nvarchar(101)
)
AS
	SET NOCOUNT ON;
SELECT * FROM domain WHERE domain_id = (SELECT domain_id FROM [user] WHERE email = @email);
SELECT * FROM [user] WHERE email = @email;
GO
/****** Object:  StoredProcedure [dbo].[FindUsersByDomain]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUsersByDomain]
(
	@domain_id nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT * FROM domain WHERE domain_id = @domain_id
SELECT * FROM [user] WHERE domain_id = @domain_id
GO
/****** Object:  StoredProcedure [dbo].[FindUserBySearch]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUserBySearch]
	@domain_id nvarchar(50),
	@search_all_domains bit,
	@search_text nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM domain WHERE domain_id = @domain_id OR @search_all_domains = 1;
	SELECT * FROM [user] WHERE 
		(family_name LIKE @search_text+'%' OR logon_name LIKE @search_text+'%') 
		AND (domain_id = @domain_id OR @search_all_domains = 1);
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UpdateUser]
(
	@logon_name nvarchar(50),
	@domain_id nvarchar(50),
	@first_names nvarchar(100),
	@family_name nvarchar(50),
	@logon_password nvarchar(100),
	@email nvarchar(100),
	@secret_question1 nvarchar(255),
	@secret_answer1 nvarchar(127),
	@secret_question2 nvarchar(255),
	@secret_answer2 nvarchar(127),
	@is_approved bit,
	@is_locked_out bit,
	@create_date datetime,
	@last_login_date datetime,
	@last_password_changed datetime,
	@last_lockout_date datetime,
	@failed_password_count int,
	@failed_password_window_start datetime,
	@failed_password_answer_count int,
	@failed_password_answer_window_start datetime,
	@validation_checksum nvarchar(100),
	@comment ntext,
	@enforce_password_change bit,
	@Original_user_id nvarchar(101)
)
AS
	SET NOCOUNT OFF;
UPDATE [user] SET  logon_name = @logon_name, domain_id = @domain_id, first_names = @first_names, family_name = @family_name, logon_password = @logon_password, email = @email, secret_question1 = @secret_question1, secret_answer1 = @secret_answer1, secret_question2 = @secret_question2, secret_answer2 = @secret_answer2, is_approved = @is_approved, is_locked_out = @is_locked_out, create_date = @create_date, last_login_date = @last_login_date, last_password_changed = @last_password_changed, last_lockout_date = @last_lockout_date, failed_password_count = @failed_password_count, failed_password_window_start = @failed_password_window_start, failed_password_answer_count = @failed_password_answer_count, failed_password_answer_window_start = @failed_password_answer_window_start, validation_checksum = @validation_checksum, comment = @comment, enforce_password_change = @enforce_password_change WHERE (user_id = @Original_user_id)
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[user_id] [nvarchar](101) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user_roles] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[InsertUserRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUserRole]
(
	@user_id nvarchar(101),
	@role_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO user_roles(user_id, role_name) VALUES (@user_id, @role_name);
	SELECT user_id, role_name FROM user_roles WHERE (role_name = @role_name) AND (user_id = @user_id)
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserRole]
(
	@user_id nvarchar(101),
	@role_name nvarchar(50),
	@Original_role_name nvarchar(50),
	@Original_user_id nvarchar(101)
)
AS
	SET NOCOUNT OFF;
UPDATE user_roles SET user_id = @user_id, role_name = @role_name WHERE (role_name = @Original_role_name) AND (user_id = @Original_user_id);
	SELECT user_id, role_name FROM user_roles WHERE (role_name = @role_name) AND (user_id = @user_id)
GO
/****** Object:  StoredProcedure [dbo].[FindUserById]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUserById]
(
	@user_id nvarchar(101)
)
AS
	SET NOCOUNT ON;
SELECT * FROM domain WHERE domain_id = (SELECT domain_id FROM [user] WHERE user_id = @user_id);
SELECT * FROM [user] WHERE user_id = @user_id;
SELECT * FROM user_roles WHERE user_id = @user_id;
GO
/****** Object:  StoredProcedure [dbo].[FindAuthenticationData]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[FindAuthenticationData]
(
	@domain_name nvarchar(50),
	@login_name nvarchar(50)
)
AS
	SET NOCOUNT ON;
DECLARE @domain_id nvarchar(50)
SELECT @domain_id = domain_id FROM domain WHERE domain_name = @domain_name;
IF @domain_id IS NULL
	RETURN;
DECLARE @user_id nvarchar(101);
SELECT @user_id = user_id FROM [user] WHERE logon_name = @login_name AND domain_id = @domain_id;
IF (@user_id IS NULL)
	RETURN;
SELECT * FROM domain WHERE domain_id = @domain_id;
SELECT * FROM [user] WHERE user_id = @user_id;
SELECT * FROM user_roles WHERE user_id = @user_id;
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserRole]    Script Date: 07/17/2012 16:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUserRole]
(
	@Original_role_name nvarchar(50),
	@Original_user_id nvarchar(101)
)
AS
	SET NOCOUNT OFF;
DELETE FROM user_roles WHERE (role_name = @Original_role_name) AND (user_id = @Original_user_id)
GO
/****** Object:  Default [DF_domain_max_users]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[domain] ADD  CONSTRAINT [DF_domain_max_users]  DEFAULT (N'EOEUn9nU4zUg1q0U4w55jaTH298i4WG6WItVUH5Mmi8=') FOR [max_users]
GO
/****** Object:  Default [DF_user_is_approved]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user_is_approved]  DEFAULT (1) FOR [is_approved]
GO
/****** Object:  Default [DF_user_enforce_password_change]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user_enforce_password_change]  DEFAULT (0) FOR [enforce_password_change]
GO
/****** Object:  ForeignKey [FK_user_domain]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_domain]
GO
/****** Object:  ForeignKey [FK_user_roles_role]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FK_user_roles_role] FOREIGN KEY([role_name])
REFERENCES [dbo].[role] ([role_name])
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FK_user_roles_role]
GO
/****** Object:  ForeignKey [FK_user_roles_user]    Script Date: 07/17/2012 16:41:47 ******/
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FK_user_roles_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FK_user_roles_user]
GO


INSERT [dbo].[hibernate_unique_key] ([next_hi]) VALUES (0)

/****** Object:  Table [dbo].[role]    Script Date: 07/17/2012 16:51:48 ******/
INSERT [dbo].[role] ([role_name]) VALUES (N'Accountant')
INSERT [dbo].[role] ([role_name]) VALUES (N'Advisor')
INSERT [dbo].[role] ([role_name]) VALUES (N'APMNAdvisor')
INSERT [dbo].[role] ([role_name]) VALUES (N'Domain Controller')
INSERT [dbo].[role] ([role_name]) VALUES (N'fs__Investor')
INSERT [dbo].[role] ([role_name]) VALUES (N'Manager')
INSERT [dbo].[role] ([role_name]) VALUES (N'ODI_AccessAllFirmPortfolios')
INSERT [dbo].[role] ([role_name]) VALUES (N'PEUser')
INSERT [dbo].[role] ([role_name]) VALUES (N'Rebalancer')
INSERT [dbo].[role] ([role_name]) VALUES (N'Researcher')
INSERT [dbo].[role] ([role_name]) VALUES (N'Support')
/****** Object:  Table [dbo].[domain]    Script Date: 07/17/2012 16:51:48 ******/
INSERT [dbo].[domain] ([domain_id], [domain_name], [max_users]) VALUES (N'system', N'system', N'EOEUn9nU4zUg1q0U4w55jaTH298i4WG6WItVUH5Mmi8=')
/****** Object:  Table [dbo].[user]    Script Date: 07/17/2012 16:51:48 ******/
INSERT [dbo].[user] ([user_id], [logon_name], [domain_id], [first_names], [family_name], [logon_password], [email], [secret_question1], [secret_answer1], [secret_question2], [secret_answer2], [is_approved], [is_locked_out], [create_date], [last_login_date], [last_password_changed], [last_lockout_date], [failed_password_count], [failed_password_window_start], [failed_password_answer_count], [failed_password_answer_window_start], [validation_checksum], [comment], [enforce_password_change]) VALUES (N'ac1da69c-23ac-4b00-b777-b63ca8e04212@system', N'admin', N'system', N'System', N'Admin', N'mIia4CrpHiDo28n3VktR6wIZ04xI732CYFfUwPM6TSuNa9/RROvhQf3tEr9JFgriXNi25pItrnleoYBQObQUgQ==', N'nick@financialsimplicity.com.au', N'', N'', N'', N'', 1, 0, CAST(0x00009752004DA8D7 AS DateTime), CAST(0x00009A7E005EAABF AS DateTime), CAST(0x0000718A00000000 AS DateTime), CAST(0x00009824001EDB85 AS DateTime), 0, CAST(0x0000718A00000000 AS DateTime), 0, CAST(0x0000718A00000000 AS DateTime), N'8sOYuOvSDb8NcE4GjW0rXFZv20A=', NULL, 0)
/****** Object:  Table [dbo].[user_roles]    Script Date: 07/17/2012 16:51:48 ******/
INSERT [dbo].[user_roles] ([user_id], [role_name]) VALUES (N'ac1da69c-23ac-4b00-b777-b63ca8e04212@system', N'Domain Controller')

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VersionInfo]') AND type in (N'U'))
DROP TABLE [dbo].[VersionInfo]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_fee_results_batch_fee_run]') AND type = 'F')
ALTER TABLE [dbo].[fee_results] DROP CONSTRAINT [FK_fee_results_batch_fee_run]
GO
/****** Object:  ForeignKey [FK_category_batch_optimisation_report]    Script Date: 03/02/2009 17:34:11 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FK_category_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_category_category_class]    Script Date: 03/02/2009 17:34:11 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_category_class]') AND type = 'F')
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FK_category_category_class]
GO
/****** Object:  ForeignKey [FK_category_allocation_batch_optimisation_report]    Script Date: 03/02/2009 17:34:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_allocation_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[category_allocation] DROP CONSTRAINT [FK_category_allocation_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_category_allocation_category]    Script Date: 03/02/2009 17:34:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_allocation_category]') AND type = 'F')
ALTER TABLE [dbo].[category_allocation] DROP CONSTRAINT [FK_category_allocation_category]
GO
/****** Object:  ForeignKey [FK_category_allocation_manager_mandate]    Script Date: 03/02/2009 17:34:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_allocation_manager_mandate]') AND type = 'F')
ALTER TABLE [dbo].[category_allocation] DROP CONSTRAINT [FK_category_allocation_manager_mandate]
GO
/****** Object:  ForeignKey [FK_category_class_batch_optimisation_report]    Script Date: 03/02/2009 17:34:16 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_class_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[category_class] DROP CONSTRAINT [FK_category_class_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_category_relationship_batch_optimisation_report]    Script Date: 03/02/2009 17:34:17 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_relationship_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[category_relationship] DROP CONSTRAINT [FK_category_relationship_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_category_relationship_category]    Script Date: 03/02/2009 17:34:17 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_relationship_category]') AND type = 'F')
ALTER TABLE [dbo].[category_relationship] DROP CONSTRAINT [FK_category_relationship_category]
GO
/****** Object:  ForeignKey [FK_category_relationship_category_class]    Script Date: 03/02/2009 17:34:17 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_relationship_category_class]') AND type = 'F')
ALTER TABLE [dbo].[category_relationship] DROP CONSTRAINT [FK_category_relationship_category_class]
GO
/****** Object:  ForeignKey [FK_client_folder_batch_optimisation_report]    Script Date: 03/02/2009 17:34:19 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_client_folder_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[client_folder] DROP CONSTRAINT [FK_client_folder_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_currency_batch_optimisation_report]    Script Date: 03/02/2009 17:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_currency_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[currency] DROP CONSTRAINT [FK_currency_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_implementation_process_batch_optimisation_report]    Script Date: 03/02/2009 17:34:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_implementation_process_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[implementation_process] DROP CONSTRAINT [FK_implementation_process_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_implementation_process_implementation_process]    Script Date: 03/02/2009 17:34:25 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_implementation_process_implementation_process]') AND type = 'F')
ALTER TABLE [dbo].[implementation_process] DROP CONSTRAINT [FK_implementation_process_implementation_process]
GO
/****** Object:  ForeignKey [FK_investment_batch_optimisation_report]    Script Date: 03/02/2009 17:34:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [FK_investment_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_currency]    Script Date: 03/02/2009 17:34:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_currency]') AND type = 'F')
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [FK_investment_currency]
GO
/****** Object:  ForeignKey [FK_investment_market1]    Script Date: 03/02/2009 17:34:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_market1]') AND type = 'F')
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [FK_investment_market1]
GO
/****** Object:  ForeignKey [FK_investment_allocation_batch_optimisation_report]    Script Date: 03/02/2009 17:34:35 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [FK_investment_allocation_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_allocation_investment]    Script Date: 03/02/2009 17:34:35 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_investment]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [FK_investment_allocation_investment]
GO
/****** Object:  ForeignKey [FK_investment_allocation_manager_mandate]    Script Date: 03/02/2009 17:34:35 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_manager_mandate]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [FK_investment_allocation_manager_mandate]
GO
/****** Object:  ForeignKey [FK_investment_categories_batch_optimisation_report]    Script Date: 03/02/2009 17:34:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_categories_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment_categories] DROP CONSTRAINT [FK_investment_categories_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_categories_category]    Script Date: 03/02/2009 17:34:37 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_categories_category]') AND type = 'F')
ALTER TABLE [dbo].[investment_categories] DROP CONSTRAINT [FK_investment_categories_category]
GO
/****** Object:  ForeignKey [FK_investment_categories_investment]    Script Date: 03/02/2009 17:34:37 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_categories_investment]') AND type = 'F')
ALTER TABLE [dbo].[investment_categories] DROP CONSTRAINT [FK_investment_categories_investment]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_batch_optimisation_report]    Script Date: 03/02/2009 17:34:38 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_investment]    Script Date: 03/02/2009 17:34:38 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investment]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_investment]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_investor]    Script Date: 03/02/2009 17:34:39 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investor]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_investor]
GO
/****** Object:  ForeignKey [FK_investor_batch_optimisation_report]    Script Date: 03/02/2009 17:34:47 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investor_client_folder]    Script Date: 03/02/2009 17:34:47 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_client_folder]') AND type = 'F')
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_client_folder]
GO
/****** Object:  ForeignKey [FK_investor_category_path_exclusions_batch_optimisation_report]    Script Date: 03/02/2009 17:34:48 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investor_category_path_exclusions] DROP CONSTRAINT [FK_investor_category_path_exclusions_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investor_category_path_exclusions_investor]    Script Date: 03/02/2009 17:34:49 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_category_path_exclusions] DROP CONSTRAINT [FK_investor_category_path_exclusions_investor]
GO
/****** Object:  ForeignKey [FK_investor_model_portfolio_investor]    Script Date: 03/02/2009 17:34:50 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_model_portfolio] DROP CONSTRAINT [FK_investor_model_portfolio_investor]
GO
/****** Object:  ForeignKey [FK_investor_model_portfolio_model_portfolio]    Script Date: 03/02/2009 17:34:51 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_model_portfolio]') AND type = 'F')
ALTER TABLE [dbo].[investor_model_portfolio] DROP CONSTRAINT [FK_investor_model_portfolio_model_portfolio]
GO
/****** Object:  ForeignKey [FK_investor_platform_investor]    Script Date: 03/02/2009 17:34:54 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_platform_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_platform] DROP CONSTRAINT [FK_investor_platform_investor]
GO
/****** Object:  ForeignKey [FK_investor_tax_lots_investment]    Script Date: 03/02/2009 17:35:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investment]') AND type = 'F')
ALTER TABLE [dbo].[investor_tax_lots] DROP CONSTRAINT [FK_investor_tax_lots_investment]
GO
/****** Object:  ForeignKey [FK_investor_tax_lots_investor]    Script Date: 03/02/2009 17:35:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_tax_lots] DROP CONSTRAINT [FK_investor_tax_lots_investor]
GO
/****** Object:  ForeignKey [FK_manager_mandate_batch_optimisation_report]    Script Date: 03/02/2009 17:35:03 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_manager_mandate_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[manager_mandate] DROP CONSTRAINT [FK_manager_mandate_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_market_batch_optimisation_report]    Script Date: 03/02/2009 17:35:04 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_market_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[market] DROP CONSTRAINT [FK_market_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_market_currency]    Script Date: 03/02/2009 17:35:05 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_market_currency]') AND type = 'F')
ALTER TABLE [dbo].[market] DROP CONSTRAINT [FK_market_currency]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]    Script Date: 01/22/2010 14:31:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocations_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations] DROP CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]
GO
/****** Object:  ForeignKey [FK_model_portfolio_batch_optimisation_report]    Script Date: 03/02/2009 17:35:08 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio] DROP CONSTRAINT [FK_model_portfolio_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_batch_optimisation_report]    Script Date: 03/02/2009 17:35:10 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_model_portfolio]    Script Date: 03/02/2009 17:35:10 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_model_portfolio]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_model_portfolio]
GO
/****** Object:  ForeignKey [FK_optimisation_report_batch_optimisation_report]    Script Date: 03/02/2009 17:35:13 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report] DROP CONSTRAINT [FK_optimisation_report_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_optimisation_report]    Script Date: 03/02/2009 17:35:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report] DROP CONSTRAINT [FK_optimisation_report_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_implementation_optimisation_report]    Script Date: 03/02/2009 17:35:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_implementation_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report_implementation] DROP CONSTRAINT [FK_optimisation_report_implementation_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_node_optimisation_report]    Script Date: 03/02/2009 17:35:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_node_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report_node] DROP CONSTRAINT [FK_optimisation_report_node_optimisation_report]
GO
/****** Object:  ForeignKey [FK_order_implementation_process]    Script Date: 03/02/2009 17:35:25 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_order_implementation_process]') AND type = 'F')
ALTER TABLE [dbo].[order] DROP CONSTRAINT [FK_order_implementation_process]
GO
/****** Object:  ForeignKey [FK_order_traunch_order]    Script Date: 03/02/2009 17:35:30 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_order_traunch_order]') AND type = 'F')
ALTER TABLE [dbo].[order_traunch] DROP CONSTRAINT [FK_order_traunch_order]
GO
/****** Object:  ForeignKey [FK_trade_batch_optimisation_report]    Script Date: 03/02/2009 17:35:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[trade] DROP CONSTRAINT [FK_trade_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_trade_investment]    Script Date: 03/02/2009 17:35:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_investment]') AND type = 'F')
ALTER TABLE [dbo].[trade] DROP CONSTRAINT [FK_trade_investment]
GO
/****** Object:  ForeignKey [FK_trade_order]    Script Date: 03/02/2009 17:35:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_order]') AND type = 'F')
ALTER TABLE [dbo].[trade] DROP CONSTRAINT [FK_trade_order]
GO
/****** Object:  ForeignKey [FK_uncompliant_investors_compliance_report]    Script Date: 03/02/2009 17:35:39 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_uncompliant_investors_compliance_report]') AND type = 'F')
ALTER TABLE [dbo].[uncompliant_investors] DROP CONSTRAINT [FK_uncompliant_investors_compliance_report]
GO
/****** Object:  Check [CK_investment_unit_size]    Script Date: 03/02/2009 17:34:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_investment_unit_size]') AND type = 'C')
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [CK_investment_unit_size]
GO
/****** Object:  Check [CK_order_traunch]    Script Date: 03/02/2009 17:35:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_order_traunch]') AND type = 'C')
ALTER TABLE [dbo].[order_traunch] DROP CONSTRAINT [CK_order_traunch]
GO
/****** Object:  Check [CK_trade_traunch]    Script Date: 03/02/2009 17:35:38 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_trade_traunch]') AND type = 'C')
ALTER TABLE [dbo].[trade_traunch] DROP CONSTRAINT [CK_trade_traunch]
GO
/****** Object:  Table [dbo].[category_relationship]    Script Date: 03/02/2009 17:34:17 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[category_relationship]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[category_relationship]
GO
/****** Object:  Table [dbo].[investor_category_path_exclusions]    Script Date: 03/02/2009 17:34:48 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investor_category_path_exclusions]
GO
/****** Object:  Table [dbo].[investment_categories]    Script Date: 03/02/2009 17:34:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment_categories]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investment_categories]
GO
/****** Object:  Table [dbo].[optimisation_report_implementation]    Script Date: 03/02/2009 17:35:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report_implementation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[optimisation_report_implementation]
GO
/****** Object:  Table [dbo].[investment_allocation]    Script Date: 03/02/2009 17:34:35 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment_allocation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investment_allocation]
GO
/****** Object:  Table [dbo].[investment_exclusions]    Script Date: 03/02/2009 17:34:38 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment_exclusions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investment_exclusions]
GO
/****** Object:  Table [dbo].[investor_tax_lots]    Script Date: 03/02/2009 17:34:59 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_tax_lots]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investor_tax_lots]
GO
/****** Object:  Table [dbo].[optimisation_report_node]    Script Date: 03/02/2009 17:35:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report_node]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[optimisation_report_node]
GO
/****** Object:  Table [dbo].[investor_model_portfolio]    Script Date: 03/02/2009 17:34:50 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_model_portfolio]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investor_model_portfolio]
GO
/****** Object:  Table [dbo].[model_portfolio_node]    Script Date: 03/02/2009 17:35:10 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[model_portfolio_node]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[model_portfolio_node]
GO
/****** Object:  Table [dbo].[investment]    Script Date: 03/02/2009 17:34:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investment]
GO
/****** Object:  Table [dbo].[investor]    Script Date: 03/02/2009 17:34:47 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investor]
GO
/****** Object:  Table [dbo].[uncompliant_investors]    Script Date: 03/02/2009 17:35:39 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[uncompliant_investors]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[uncompliant_investors]
GO
/****** Object:  Table [dbo].[order]    Script Date: 03/02/2009 17:35:25 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[order]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[order]
GO
/****** Object:  Table [dbo].[category_class]    Script Date: 03/02/2009 17:34:16 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[category_class]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[category_class]
GO
/****** Object:  Table [dbo].[client_folder]    Script Date: 03/02/2009 17:34:19 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[client_folder]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[client_folder]
GO
/****** Object:  Table [dbo].[currency]    Script Date: 03/02/2009 17:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[currency]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[currency]
GO
/****** Object:  Table [dbo].[market]    Script Date: 03/02/2009 17:35:04 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[market]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[market]
GO
/****** Object:  Table [dbo].[model_portfolio_node_mandate_allocations]    Script Date: 01/22/2010 14:31:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_node_mandate_allocations]
GO
/****** Object:  Table [dbo].[model_portfolio]    Script Date: 03/02/2009 17:35:08 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[model_portfolio]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[model_portfolio]
GO
/****** Object:  Table [dbo].[category]    Script Date: 03/02/2009 17:34:11 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[category]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[category]
GO
/****** Object:  Table [dbo].[manager_mandate]    Script Date: 03/02/2009 17:35:03 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[manager_mandate]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[manager_mandate]
GO
/****** Object:  Table [dbo].[application_info]    Script Date: 03/02/2009 17:34:06 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[application_info]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[application_info]
GO
/****** Object:  Table [dbo].[investor_platform]    Script Date: 03/02/2009 17:34:53 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_platform]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[investor_platform]
GO
/****** Object:  Table [dbo].[web_user_group_users]    Script Date: 03/02/2009 17:35:40 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_user_group_users]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[web_user_group_users]
GO
/****** Object:  Table [dbo].[category_allocation]    Script Date: 03/02/2009 17:34:13 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[category_allocation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[category_allocation]
GO
/****** Object:  Table [dbo].[implementation_process]    Script Date: 03/02/2009 17:34:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[implementation_process]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[implementation_process]
GO
/****** Object:  Table [dbo].[optimisation_report]    Script Date: 03/02/2009 17:35:13 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[optimisation_report]
GO
/****** Object:  Table [dbo].[batch_optimisation_report]    Script Date: 03/02/2009 17:34:09 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[batch_optimisation_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[batch_optimisation_report]
GO
/****** Object:  Table [dbo].[compliance_report]    Script Date: 03/02/2009 17:34:21 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[compliance_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[compliance_report]
GO
/****** Object:  Table [dbo].[trade_traunch]    Script Date: 03/02/2009 17:35:38 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[trade_traunch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[trade_traunch]
GO
/****** Object:  Table [dbo].[order_traunch]    Script Date: 03/02/2009 17:35:30 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[order_traunch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[order_traunch]
GO
/****** Object:  Table [dbo].[trade]    Script Date: 03/02/2009 17:35:36 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[trade]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[trade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[batch_fee_run]') AND type in (N'U'))
DROP TABLE [dbo].[batch_fee_run]
GO
/****** Object:  Table [dbo].[fee_results]    Script Date: 02/02/2011 09:17:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_results]') AND type in (N'U'))
DROP TABLE [dbo].[fee_results]
GO
/****** Object:  Table [dbo].[investor_fum_log]    Script Date: 02/02/2011 09:17:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_fum_log]') AND type in (N'U'))
DROP TABLE [dbo].[investor_fum_log]
GO
/****** Object:  Table [dbo].[investor_mandate_allocation_log]    Script Date: 02/02/2011 09:17:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_mandate_allocation_log]') AND type in (N'U'))
DROP TABLE [dbo].[investor_mandate_allocation_log]
GO

/****** Object:  Table [dbo].[holding_history]    Script Date: 01/31/2012 13:15:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[holding_history]') AND type in (N'U'))
DROP TABLE [dbo].[holding_history]
GO

/****** Object:  Table [dbo].[holding_history]    Script Date: 01/31/2012 13:15:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hibernate_unique_key]') AND type in (N'U'))
DROP TABLE [dbo].[hibernate_unique_key]
GO
/****** Object:  Table [dbo].[domain_event]    Script Date: 02/14/2012 09:50:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_event]') AND type in (N'U'))
DROP TABLE [dbo].[domain_event]
GO
/****** Object:  Table [dbo].[command_error]    Script Date: 02/14/2012 09:50:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[command_error]') AND type in (N'U'))
DROP TABLE [dbo].[command_error]
GO
/****** Object:  Table [dbo].[model_portfolio_history]    Script Date: 02/15/2012 15:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_history]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_history]
GO
/****** Object:  Table [dbo].[application_info]    Script Date: 03/02/2009 17:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[application_info]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[application_info](
	[database_level] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[batch_optimisation_report]    Script Date: 03/02/2009 17:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[batch_optimisation_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[batch_optimisation_report](
	[batch_optimisation_report_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_batch_optimisation_report_batch_optimisation_report_id]  DEFAULT (newid()),
	[batch_optimisation_report_name] [nvarchar](100) NOT NULL,
	[optimisation_date] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[batch_optimisation_report_status] [smallint] NOT NULL CONSTRAINT [DF_batch_optimisation_report_batch_optimisation_report_status]  DEFAULT ((1)),
	[authorisation_mode] [smallint] NOT NULL CONSTRAINT [DF_batch_optimisation_report_rebalance_mode]  DEFAULT ((0)),
	[rebalance_type] [smallint] NOT NULL CONSTRAINT [DF_batch_optimisation_report_rebalance_type]  DEFAULT ((0)),
	[validation_code] [nvarchar](100) NOT NULL,
	[is_archived] [bit] NOT NULL CONSTRAINT [DF_batch_optimisation_report_is_archived]  DEFAULT ((0)),
	[rebalancing_currency_code] nchar(3) NOT NULL,
 CONSTRAINT [PK_batch_optimisation_report] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[compliance_report]    Script Date: 03/02/2009 17:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[compliance_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[compliance_report](
	[compliance_report_id] [uniqueidentifier] NOT NULL,
	[compliance_report_name] [nvarchar](50) NOT NULL,
	[run_date] [datetime] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[template_override_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_compliance_report] PRIMARY KEY CLUSTERED 
(
	[compliance_report_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[trade_traunch]    Script Date: 03/02/2009 17:35:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[trade_traunch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[trade_traunch](
	[trade_id] [uniqueidentifier] NOT NULL,
	[traunch_id] [int] NOT NULL,
	[amount] decimal(28,15) NOT NULL,
	[quantity] [float] NOT NULL,
	[brokerage] decimal(19,6) NOT NULL,
	[charges] decimal(19,6) NOT NULL,
	[gst] decimal(19,6) NOT NULL,
 CONSTRAINT [PK_trade_traunch] PRIMARY KEY CLUSTERED 
(
	[trade_id] ASC,
	[traunch_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[web_user_group_users]    Script Date: 03/02/2009 17:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_user_group_users]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[web_user_group_users](
	[group_id] [int] NOT NULL,
	[web_user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_web_user_group_users] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC,
	[web_user_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[trade]    Script Date: 03/02/2009 17:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[trade]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[trade](
	[trade_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_trade_trade_id]  DEFAULT (newid()),
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[parcel_id] [int] NOT NULL,
	[wrap_platform_id] [int] NOT NULL CONSTRAINT [DF_trade_wrap_platform_id]  DEFAULT ((-1)),
	[suggested_amount] decimal(28,15) NOT NULL,
	[adjusted_amount] decimal(28,15) NOT NULL CONSTRAINT [DF_trade_adjusted_amount]  DEFAULT ((0)),
	[advisor_comment] [nvarchar](511) NULL,
	[order_id] [uniqueidentifier] NULL,
	[order_type] [smallint] NOT NULL CONSTRAINT [DF_trade_order_type]  DEFAULT ((0)),
	[wrap_platform_client_id] [nvarchar](50) NOT NULL CONSTRAINT [DF_trade_wrap_platform_client_id]  DEFAULT (''),
	[error] [smallint] NOT NULL CONSTRAINT [DF_trade_error]  DEFAULT ((0)),
	[adjusted_trade_error] [smallint] NOT NULL CONSTRAINT [DF_trade_adjusted_trade_error]  DEFAULT ((0)),
	[indicative_brokerage] decimal(19,6) NOT NULL CONSTRAINT [DF_trade_indicative_brokerage]  DEFAULT ((0)),
	[rebalance_unit_price] money NULL,
 CONSTRAINT [PK_trade] PRIMARY KEY CLUSTERED 
(
	[trade_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY],
 CONSTRAINT [IX_trade] UNIQUE NONCLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[investment_id] ASC,
	[parcel_id] ASC,
	[wrap_platform_id] ASC,
	[order_type] ASC,
	[wrap_platform_client_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[order_traunch]    Script Date: 03/02/2009 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[order_traunch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[order_traunch](
	[order_id] [uniqueidentifier] NOT NULL,
	[traunch_id] [int] NOT NULL,
	[order_date] [datetime] NOT NULL,
	[settlement_date] [datetime] NULL,
	[broker_pid] [nvarchar](10) NULL,
	[contract_note] [nvarchar](50) NULL,
	[amount] decimal(28,15) NOT NULL,
	[quantity] [float] NOT NULL,
	[brokerage] decimal(19,6) NOT NULL,
	[charges] decimal(19,6) NOT NULL,
	[gst] decimal(19,6) NOT NULL,
	[comment] [nvarchar](255) NULL,
	[order_traunch_status] [int] NOT NULL CONSTRAINT [DF_order_traunch_order_traunch_status]  DEFAULT ((1)),
	[keep_allocations] [bit] NOT NULL CONSTRAINT [DF_order_traunch_keep_allocations]  DEFAULT ((0)),
	[read_only] [bit] NOT NULL CONSTRAINT [DF_order_traunch_read_only]  DEFAULT ((0)),
	[error] [smallint] NOT NULL CONSTRAINT [DF_order_traunch_error]  DEFAULT ((0)),
	[broker_name] [nvarchar](50) NULL,
	[net_order_id] [uniqueidentifier] NULL,
	[net_traunch_id] [int] NULL,
 CONSTRAINT [PK_order_traunch] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[traunch_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[client_folder]    Script Date: 03/02/2009 17:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[client_folder]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[client_folder](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[client_folder_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_client_folder_client_folder_id]  DEFAULT (newid()),
	[client_folder_name] [nvarchar](50) NOT NULL,
	[advisor_id] [nvarchar](101) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_client_folder] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[client_folder_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[currency]    Script Date: 03/02/2009 17:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[currency]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[currency](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[currency_code] [nchar](3) NOT NULL,
	[currency_name] [nvarchar](100) NOT NULL,
	[exchange_rate] [money] NOT NULL,
	[is_default] [bit] NOT NULL,
 CONSTRAINT [PK_currency] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[currency_code] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[manager_mandate]    Script Date: 03/02/2009 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[manager_mandate]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[manager_mandate](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[mandate_guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_manager_mandate_mandate_guid]  DEFAULT (newid()),
	[mandate_name] [nvarchar](100) NOT NULL CONSTRAINT [DF_manager_mandate_mandate_name]  DEFAULT (N'New Mandate'),
	[category_class_id] [uniqueidentifier] NULL,
	[date_created] [datetime] NOT NULL,
	[date_edited] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[description] [nvarchar](511) NULL,
 CONSTRAINT [PK_manager_mandate] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[mandate_guid] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[model_portfolio]    Script Date: 03/02/2009 17:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[model_portfolio]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[model_portfolio](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_model_portfolio_model_portfolio_id]  DEFAULT (newid()),
	[model_portfolio_name] [nvarchar](100) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_available] [datetime] NULL,
	[date_edited] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[type] [smallint] NOT NULL CONSTRAINT [DF_model_portfolio_is_complex]  DEFAULT ((0)),
	[comment] [nvarchar](1023) NOT NULL CONSTRAINT [DF_model_portfolio_comment]  DEFAULT (''),
 CONSTRAINT [PK_model_portfolio] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[model_portfolio_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[optimisation_report]    Script Date: 03/02/2009 17:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[optimisation_report](
	[optimisation_report_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_optimisation_report_optimisation_report_id]  DEFAULT (newid()),
	[optimisation_report_name] [nvarchar](100) NOT NULL,
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[comment] [nvarchar](511) NOT NULL,
	[rebalance_scale] [real] NOT NULL CONSTRAINT [DF_optimisation_report_rebalance_scale]  DEFAULT ((0)),
	[errors] [int] NOT NULL CONSTRAINT [DF_optimisation_report_errors]  DEFAULT ((0)),
	[status] [smallint] NOT NULL CONSTRAINT [DF_optimisation_report_status]  DEFAULT ((0)),
	[implementation_process_id] [uniqueidentifier] NULL,
	[compliance_status] [smallint] NULL,
	[drift_limit_status] [smallint] NOT NULL CONSTRAINT DF_optimisation_report_drift_limit_status DEFAULT 1,
 CONSTRAINT [PK_optimisation_report] PRIMARY KEY CLUSTERED 
(
	[optimisation_report_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
CREATE NONCLUSTERED INDEX [IX_optimisation_report_implementation_process]
ON [dbo].[optimisation_report] ([implementation_process_id])
INCLUDE ([batch_optimisation_report_id],[investor_id])
GO

/****** Object:  Table [dbo].[investor]    Script Date: 03/02/2009 17:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investor](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_investor_investor_id]  DEFAULT (newid()),
	[investor_name] [nvarchar](200) NOT NULL,
	[client_folder_id] [uniqueidentifier] NOT NULL,
	[tax_bracket_id] [int] NOT NULL,
	[cgt_preferences] [smallint] NOT NULL,
	[legal_structure] [smallint] NOT NULL,
	[min_security_balance] [money] NOT NULL,
	[min_traded_lot_size] [money] NOT NULL,
	[current_cgt] [money] NOT NULL,
	[cash_account] [money] NOT NULL,
	[sell_unmanaged_investments] [smallint] NOT NULL CONSTRAINT [DF_investor_sell_unmanaged_investments]  DEFAULT ((0)),
	[distribute_excess_to_cash] [smallint] NOT NULL CONSTRAINT [DF_investor_distribute_excess_to_cash]  DEFAULT ((0)),
	[tax_lot_selection] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_lot_selection]  DEFAULT ((0)),
	[brokerage_rate] [real] NOT NULL CONSTRAINT [DF_investor_brokerage_rate]  DEFAULT ((0)),
	[other_income] [money] NOT NULL CONSTRAINT [DF_investor_other_income]  DEFAULT ((0)),
	[tax_payers] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_payers]  DEFAULT ((1)),
	[account_type] [smallint] NOT NULL CONSTRAINT [DF_investor_account_type]  DEFAULT ((0)),
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_investor_created_date]  DEFAULT (getutcdate()),
	[mda_operator_id] [nvarchar](50) NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[advisor_id] [nvarchar](101) NOT NULL,
	[enable_correlation] [bit] NOT NULL CONSTRAINT [DF_investor_enable_correlation]  DEFAULT ((0)),
	[min_cgt_months] [int] NOT NULL CONSTRAINT [DF_investor_min_cgt_months]  DEFAULT ((0)),
	[max_cgt_months] [int] NOT NULL CONSTRAINT [DF_investor_max_cgt_months]  DEFAULT ((12)),
	[capital_gain_percentage] [float] NOT NULL CONSTRAINT [DF_investor_capital_gain_percentage]  DEFAULT ((0)),
	[minimum_holding_weeks] [int] NOT NULL CONSTRAINT [DF_investor_minimum_holding_weeks]  DEFAULT ((0)),
	[base_currency_code] nchar(3) NOT NULL,
 CONSTRAINT [PK_investor] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[market]    Script Date: 03/02/2009 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[market]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[market](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[market_code] [nvarchar](10) NOT NULL,
	[market_name] [nvarchar](100) NOT NULL,
	[currency_code] [nchar](3) NOT NULL,
 CONSTRAINT [PK_market] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[market_code] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[model_portfolio_node]    Script Date: 03/02/2009 17:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[model_portfolio_node]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[model_portfolio_node](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[node_id] [int] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[parent_node_id] [int] NULL,
	[category_id] [uniqueidentifier] NULL,
	[mandate_guid] [uniqueidentifier] NULL,
	[category_class_id] [uniqueidentifier] NULL,
	[category_class_name] nvarchar(100) NULL,
	[category_name] nvarchar(100) NULL,
	[category_code] nvarchar(20) NULL,
 CONSTRAINT [PK_model_portfolio_node] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[node_id] ASC,
	[model_portfolio_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[model_portfolio_node_mandate_allocations]    Script Date: 01/22/2010 14:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_node_mandate_allocations](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_node_id] [int] NOT NULL,
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[priority] [int] NOT NULL,
 CONSTRAINT [PK_model_portfolio_node_mandate_allocations] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[model_portfolio_id] ASC,
	[model_portfolio_node_id] ASC,
	[mandate_guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[category_allocation]    Script Date: 03/02/2009 17:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[category_allocation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[category_allocation](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[recommendation] [smallint] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[reserve_all] [bit] NOT NULL,
	[drift_alert] [float](53) NULL,
 CONSTRAINT [PK_category_allocation] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[mandate_guid] ASC,
	[category_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Table [dbo].[investment]    Script Date: 03/02/2009 17:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investment](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_investment_investment_id]  DEFAULT (newid()),
	[investment_name] [nvarchar](100) NOT NULL,
	[investment_code] [nvarchar](20) NOT NULL,
	[market_code] [nvarchar](10) NULL,
	[currency_code] [nchar](3) NOT NULL,
	[unit_price] [decimal](19,8) NOT NULL,
	[mer] [real] NULL,
	[investment_type] [smallint] NOT NULL CONSTRAINT [DF_investment_investment_type]  DEFAULT ((0)),
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NULL,
	[income_rate] [real] NOT NULL CONSTRAINT [DF_investment_income_rate]  DEFAULT ((0)),
	[growth_rate] [real] NOT NULL CONSTRAINT [DF_investment_growth_rate]  DEFAULT ((0)),
	[unit_size] [real] NOT NULL CONSTRAINT [DF_investment_unit_size]  DEFAULT ((1)),
	[dps] [real] NOT NULL CONSTRAINT [DF_investment_dps]  DEFAULT ((0)),
	[franking] [real] NOT NULL CONSTRAINT [DF_investment_franking]  DEFAULT ((0)),
	[correlation_group] [nvarchar](20) NULL,
	[target_price] [money] NOT NULL CONSTRAINT [DF_investment_target_price]  DEFAULT ((0)),
	[recommendation] [smallint] NULL,
	[buy_price] [money] NULL,
	[sell_price] [money] NULL,
	[status] smallint NOT NULL,
	[min_security_balance] money NOT NULL,
	[min_traded_lot_size] money NOT NULL,
	[ignore_min_security_balance] bit NOT NULL,
	[ignore_min_traded_lot_size] bit NOT NULL,
	[base_currency_unit_price] [decimal](19,8) NOT NULL,
	[fx_exchange_rate] [decimal](19,8) NOT NULL,
 CONSTRAINT [PK_investment] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investment_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investor_category_path_exclusions]    Script Date: 03/02/2009 17:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investor_category_path_exclusions](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[category_path] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_investor_category_path_exclusions] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[category_path] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investment_allocation]    Script Date: 03/02/2009 17:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment_allocation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investment_allocation](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[recommendation] [smallint] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[reserve_all] [bit] NOT NULL,
	[buy_price] [money] NULL,
	[sell_price] [money] NULL,
	[max_increment] [real] NULL,
	[dynamic_rating_option] [smallint] NULL,
	[drift_alert] [float](53) NULL,
 CONSTRAINT [PK_investment_allocation] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[mandate_guid] ASC,
	[investment_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investment_exclusions]    Script Date: 03/02/2009 17:34:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investment_exclusions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investment_exclusions](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[comment] [nvarchar](255) NULL,
	reserved_units float(53) NULL,
	reserved_units_type smallint NULL,
	exclusion_type smallint NOT NULL CONSTRAINT DF_investment_exclusions_exclusion_type DEFAULT 0,
	substitute_investment_id uniqueidentifier NULL,
 CONSTRAINT [PK_investment_exclusions] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[investment_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[implementation_process]    Script Date: 03/02/2009 17:34:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[implementation_process]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[implementation_process](
	[implementation_process_id] [uniqueidentifier] NOT NULL,
	[implementation_process_name] [nvarchar](100) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[implementation_domain_id] [nvarchar](50) NULL,
	[assigned_user_id] [nvarchar](101) NULL,
	[process_status] [smallint] NOT NULL,
	[external_id] [nvarchar](20) NULL,
 CONSTRAINT [PK_implementation_process] PRIMARY KEY CLUSTERED 
(
	[implementation_process_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[uncompliant_investors]    Script Date: 03/02/2009 17:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[uncompliant_investors]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[uncompliant_investors](
	[compliance_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[compliance_status] [smallint] NOT NULL,
 CONSTRAINT [PK_uncompliant_investors] PRIMARY KEY CLUSTERED 
(
	[compliance_report_id] ASC,
	[investor_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investor_model_portfolio]    Script Date: 03/02/2009 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_model_portfolio]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investor_model_portfolio](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[priority] [int] NOT NULL,
 CONSTRAINT [PK_investor_model_portfolio] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[model_portfolio_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[optimisation_report_implementation]    Script Date: 03/02/2009 17:35:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report_implementation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[optimisation_report_implementation](
	[optimisation_report_id] [uniqueidentifier] NOT NULL,
	[status] [smallint] NOT NULL,
	[status_date] [datetime] NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_optimisation_report_implementation] PRIMARY KEY CLUSTERED 
(
	[optimisation_report_id] ASC,
	[status] ASC,
	[status_date] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[optimisation_report_node]    Script Date: 03/02/2009 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[optimisation_report_node]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[optimisation_report_node](
	[optimisation_report_id] [uniqueidentifier] NOT NULL,
	[node_id] [int] NOT NULL,
	[parent_node_id] [int] NULL,
	[investment_id] [uniqueidentifier] NULL,
	[category_class_id] [uniqueidentifier] NULL,
	[category_id] [uniqueidentifier] NULL,
	[manager_mandate_id] [uniqueidentifier] NULL,
	[allocation] [real] NOT NULL,
	[capital_gain] decimal(19,6) NOT NULL,
	[current_value] decimal(28,15) NOT NULL,
	[explicit_reserved_value] decimal(19,6) NOT NULL,
	[final_value] decimal(28,15) NOT NULL,
	[adjusted_final_value] decimal(28,15) NOT NULL CONSTRAINT [DF_optimisation_report_node_adjusted_final_value]  DEFAULT ((0)),
	[is_managed] [bit] NOT NULL,
	[profit_loss] decimal(19,6) NOT NULL,
	[recommendation] [smallint] NOT NULL,
	[reserved_value] decimal(19,6) NOT NULL,
	[revised_for_min_holding] [bit] NOT NULL,
	[revised_for_min_trade] [bit] NOT NULL,
	[target_value] decimal(19,6) NOT NULL,
	[mandate_overriden] [bit] NOT NULL CONSTRAINT [DF_optimisation_report_node_mandate_overriden]  DEFAULT ((0)),
	[unallocated_value] [decimal](19, 6) NOT NULL CONSTRAINT [DF_optimisation_report_node_unallocated_value]  DEFAULT ((0)),
	[unallocated_value_reason] [smallint] NOT NULL CONSTRAINT [DF_optimisation_report_node_unallocated_value_reason]  DEFAULT ((0)),
	[is_excluded] [bit] NOT NULL CONSTRAINT [DF_optimisation_report_node_is_excluded]  DEFAULT ((0)),
	[indicative_brokerage] decimal(19,6) NOT NULL CONSTRAINT [DF_optimisation_report_node_indicative_brokerage]  DEFAULT ((0)),
	quarantined_cgt decimal(19,6) NOT NULL CONSTRAINT DF_optimisation_report_node_quarantined_cgt DEFAULT 0,
	[drift_limit_status] [smallint] NOT NULL CONSTRAINT DF_optimisation_report_node_drift_limit_status DEFAULT 1,
	[drift_limit_alert] [float](53) NULL,
	[category_class_name] nvarchar(100) NULL,
	[category_name] nvarchar(100) NULL,
	[category_code] nvarchar(20) NULL,
 CONSTRAINT [PK_optimisation_report_node] PRIMARY KEY CLUSTERED 
(
	[optimisation_report_id] ASC,
	[node_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investor_platform]    Script Date: 03/02/2009 17:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_platform]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investor_platform](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[client_id] [nvarchar](50) NOT NULL,
	[buy_priority] [int] NOT NULL CONSTRAINT [DF_investor_platform_buy_priority]  DEFAULT ((0)),
	[sell_priority] [int] NOT NULL CONSTRAINT [DF_investor_platform_sell_priority]  DEFAULT ((0)),
	[available_cash] [money] NOT NULL CONSTRAINT [DF_investor_platform_available_cash]  DEFAULT ((0)),
	[receivable_cash] [money] NOT NULL CONSTRAINT [DF_investor_platform_receivable_cash]  DEFAULT ((0)),
 CONSTRAINT [PK_investor_platform] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[wrap_platform_id] ASC,
	[client_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[investor_tax_lots]    Script Date: 03/02/2009 17:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[investor_tax_lots]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[investor_tax_lots](
	[batch_optimisation_report_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[purchase_date] [datetime] NOT NULL,
	[parcel_id] [int] NOT NULL,
	[purchase_price] [money] NOT NULL,
	[cost_base] [money] NOT NULL,
	[units] [float] NOT NULL,
	[reserved_units] [float] NOT NULL,
	[reserved_unit_type] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_lots_reserved_unit_type]  DEFAULT ((1)),
	[rebalance_units] [float] NOT NULL CONSTRAINT [DF_investor_tax_lots_rebalance_units]  DEFAULT ((1)),
	[rebalance_unit_type] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_lots_rebalance_unit_type]  DEFAULT ((0)),
	[wrap_platform_id] [int] NOT NULL CONSTRAINT [DF_investor_tax_lots_wrap_platform_id]  DEFAULT ((-1)),
	[account_name] [nvarchar](100) NULL,
	[rebalance] [bit] NOT NULL CONSTRAINT [DF_investor_tax_lots_rebalance]  DEFAULT ((1)),
	[is_tax_exempt] [bit] NOT NULL CONSTRAINT [DF_investor_tax_lots_is_tax_exempt]  DEFAULT ((0)),
	[wrap_platform_client_id] [nvarchar](50) NOT NULL CONSTRAINT [DF_investor_tax_lots_wrap_platform_client_id]  DEFAULT (''),
	[reservation_comment] [nvarchar](255) NULL,
	[allocation_code] [nvarchar](30) NULL CONSTRAINT [DF_investor_tax_lots_allocation_code]  DEFAULT (''),
 CONSTRAINT [PK_investor_tax_lots] PRIMARY KEY CLUSTERED 
(
	[batch_optimisation_report_id] ASC,
	[investor_id] ASC,
	[investment_id] ASC,
	[parcel_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[order]    Script Date: 03/02/2009 17:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[order]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[order](
	[order_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_order_order_id]  DEFAULT (newid()),
	[investment_id] [uniqueidentifier] NOT NULL,
	[suggested_amount] decimal(28,15) NOT NULL,
	[comment] [nvarchar](255) NULL,
	[order_type] [smallint] NOT NULL CONSTRAINT [DF_order_order_type]  DEFAULT ((0)),
	[error] [smallint] NOT NULL CONSTRAINT [DF_order_error]  DEFAULT ((0)),
	[error_units] [float] NULL,
	[implementation_process_id] [uniqueidentifier] NOT NULL,
	[executing_party] [nvarchar](50) NULL,
	[suggested_order_units] [float](53) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH FILLFACTOR = 90 ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[batch_fee_run] ******/
CREATE TABLE dbo.batch_fee_run
	(
	batch_fee_run_id uniqueidentifier NOT NULL,
	batch_fee_run_name nvarchar(50) NOT NULL,
	batch_fee_run_date datetime NOT NULL,
	domain_id nvarchar(50) NOT NULL,
	[user_id] nvarchar(101) NOT NULL,
	batch_fee_run_start_date datetime NOT NULL,
	batch_fee_run_end_date datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.batch_fee_run ADD CONSTRAINT
	PK_batch_fee_run PRIMARY KEY CLUSTERED 
	(
	batch_fee_run_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fee_results]    Script Date: 02/02/2011 09:18:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fee_results](
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[as_at_date] [datetime] NOT NULL,
	[fum] [money] NOT NULL,
	[result] [xml] NOT NULL,
	[batch_fee_run_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_fee_results] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC,
	[as_at_date] ASC,
	[batch_fee_run_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.investor_fum_log
	(
	fee_row_id uniqueidentifier NOT NULL,
	investor_id uniqueidentifier NOT NULL,
	wrap_platform_id int NOT NULL,
	wrap_platform_client_id nvarchar(50) NOT NULL,
	as_at_date datetime NOT NULL,
	fum money NOT NULL,
	platform_type int NOT NULL,
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.investor_fum_log ADD CONSTRAINT
	PK_investor_fum_log PRIMARY KEY CLUSTERED 
	(
	fee_row_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX IX_investor_fum_log ON dbo.investor_fum_log
	(
	investor_id,
	wrap_platform_id,
	wrap_platform_client_id,
	as_at_date
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.investor_mandate_allocation_log
	(
	investor_id uniqueidentifier NOT NULL,
	wrap_platform_id int NOT NULL,
	wrap_platform_client_id nvarchar(50) NOT NULL,
	as_at_date datetime NOT NULL,
	manager_mandate_id uniqueidentifier NOT NULL,
	allocation float(53) NOT NULL,
	model_portfolio_id uniqueidentifier NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.investor_mandate_allocation_log ADD CONSTRAINT
	PK_investor_mandate_allocation_log PRIMARY KEY CLUSTERED 
	(
	investor_id,
	wrap_platform_id,
	wrap_platform_client_id,
	as_at_date,
	manager_mandate_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[holding_history]    Script Date: 01/31/2012 13:15:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[holding_history](
	[investment_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
	[as_at_date] [datetime] NOT NULL,
	[units] [float] NOT NULL,
 CONSTRAINT [PK_holding_history] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC,
	[investor_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC,
	[as_at_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hibernate_unique_key]    Script Date: 02/13/2012 17:14:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hibernate_unique_key](
	[next_hi] [int] NULL
) ON [PRIMARY]
GO
INSERT INTO hibernate_unique_key(next_hi) VALUES (0)

GO
/****** Object:  Table [dbo].[domain_event]    Script Date: 02/14/2012 09:47:30 ******/
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

/****** Object:  Table [dbo].[command_error]    Script Date: 02/14/2012 09:48:36 ******/
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

/****** Object:  Table [dbo].[model_portfolio_history]    Script Date: 02/15/2012 15:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_history](
	[entity_id] [uniqueidentifier] NOT NULL,
	[entity_type] [smallint] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[as_at_date] [datetime] NOT NULL,
	[calculated_units] [decimal](18, 6) NOT NULL,
 CONSTRAINT [PK_model_portfolio_history] PRIMARY KEY CLUSTERED 
(
	entity_id,
	entity_type,
	investment_id,
	as_at_date
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO


/****** Object:  Check [CK_investment_unit_size]    Script Date: 03/02/2009 17:34:32 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_investment_unit_size]') AND type = 'C')
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [CK_investment_unit_size] CHECK  (([unit_size]>(0)))
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [CK_investment_unit_size]
GO
/****** Object:  Check [CK_order_traunch]    Script Date: 03/02/2009 17:35:31 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_order_traunch]') AND type = 'C')
ALTER TABLE [dbo].[order_traunch]  WITH CHECK ADD  CONSTRAINT [CK_order_traunch] CHECK  (([quantity]>=(0) AND [brokerage]>=(0) AND [charges]>=(0) AND [gst]>=(0)))
GO
ALTER TABLE [dbo].[order_traunch] CHECK CONSTRAINT [CK_order_traunch]
GO
/****** Object:  Check [CK_trade_traunch]    Script Date: 03/02/2009 17:35:38 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CK_trade_traunch]') AND type = 'C')
ALTER TABLE [dbo].[trade_traunch]  WITH CHECK ADD  CONSTRAINT [CK_trade_traunch] CHECK  (([quantity]>=(0) AND [brokerage]>=(0) AND [charges]>=(0) AND [gst]>=(0)))
GO
ALTER TABLE [dbo].[trade_traunch] CHECK CONSTRAINT [CK_trade_traunch]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_fee_results_batch_fee_run]') AND type = 'F')
ALTER TABLE dbo.fee_results ADD CONSTRAINT
	FK_fee_results_batch_fee_run FOREIGN KEY (batch_fee_run_id)
	REFERENCES dbo.batch_fee_run (batch_fee_run_id) ON UPDATE  NO ACTION ON DELETE  CASCADE 
GO
/****** Object:  ForeignKey [FK_category_allocation_batch_optimisation_report]    Script Date: 03/02/2009 17:34:14 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_allocation_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[category_allocation]  WITH CHECK ADD  CONSTRAINT [FK_category_allocation_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[category_allocation] CHECK CONSTRAINT [FK_category_allocation_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_category_allocation_manager_mandate]    Script Date: 03/02/2009 17:34:14 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_category_allocation_manager_mandate]') AND type = 'F')
ALTER TABLE [dbo].[category_allocation]  WITH CHECK ADD  CONSTRAINT [FK_category_allocation_manager_mandate] FOREIGN KEY([batch_optimisation_report_id], [mandate_guid])
REFERENCES [dbo].[manager_mandate] ([batch_optimisation_report_id], [mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category_allocation] CHECK CONSTRAINT [FK_category_allocation_manager_mandate]
GO

/****** Object:  ForeignKey [FK_client_folder_batch_optimisation_report]    Script Date: 03/02/2009 17:34:19 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_client_folder_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[client_folder]  WITH NOCHECK ADD  CONSTRAINT [FK_client_folder_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[client_folder] CHECK CONSTRAINT [FK_client_folder_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_currency_batch_optimisation_report]    Script Date: 03/02/2009 17:34:22 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_currency_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[currency]  WITH CHECK ADD  CONSTRAINT [FK_currency_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[currency] CHECK CONSTRAINT [FK_currency_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_implementation_process_batch_optimisation_report]    Script Date: 03/02/2009 17:34:24 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_implementation_process_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[implementation_process]  WITH CHECK ADD  CONSTRAINT [FK_implementation_process_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[implementation_process] CHECK CONSTRAINT [FK_implementation_process_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_implementation_process_implementation_process]    Script Date: 03/02/2009 17:34:25 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_implementation_process_implementation_process]') AND type = 'F')
ALTER TABLE [dbo].[implementation_process]  WITH NOCHECK ADD  CONSTRAINT [FK_implementation_process_implementation_process] FOREIGN KEY([implementation_process_id])
REFERENCES [dbo].[implementation_process] ([implementation_process_id])
GO
ALTER TABLE [dbo].[implementation_process] CHECK CONSTRAINT [FK_implementation_process_implementation_process]
GO
/****** Object:  ForeignKey [FK_investment_batch_optimisation_report]    Script Date: 03/02/2009 17:34:31 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_currency]    Script Date: 03/02/2009 17:34:31 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_currency]') AND type = 'F')
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_currency] FOREIGN KEY([batch_optimisation_report_id], [currency_code])
REFERENCES [dbo].[currency] ([batch_optimisation_report_id], [currency_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_currency]
GO
/****** Object:  ForeignKey [FK_investment_market1]    Script Date: 03/02/2009 17:34:32 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_market1]') AND type = 'F')
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_market1] FOREIGN KEY([batch_optimisation_report_id], [market_code])
REFERENCES [dbo].[market] ([batch_optimisation_report_id], [market_code])
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_market1]
GO
/****** Object:  ForeignKey [FK_investment_allocation_batch_optimisation_report]    Script Date: 03/02/2009 17:34:35 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation]  WITH CHECK ADD  CONSTRAINT [FK_investment_allocation_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[investment_allocation] CHECK CONSTRAINT [FK_investment_allocation_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_allocation_investment]    Script Date: 03/02/2009 17:34:35 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_investment]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_allocation_investment] FOREIGN KEY([batch_optimisation_report_id], [investment_id])
REFERENCES [dbo].[investment] ([batch_optimisation_report_id], [investment_id])
GO
ALTER TABLE [dbo].[investment_allocation] NOCHECK CONSTRAINT [FK_investment_allocation_investment]
GO
/****** Object:  ForeignKey [FK_investment_allocation_manager_mandate]    Script Date: 03/02/2009 17:34:35 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_allocation_manager_mandate]') AND type = 'F')
ALTER TABLE [dbo].[investment_allocation]  WITH CHECK ADD  CONSTRAINT [FK_investment_allocation_manager_mandate] FOREIGN KEY([batch_optimisation_report_id], [mandate_guid])
REFERENCES [dbo].[manager_mandate] ([batch_optimisation_report_id], [mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_allocation] CHECK CONSTRAINT [FK_investment_allocation_manager_mandate]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_batch_optimisation_report]    Script Date: 03/02/2009 17:34:38 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_exclusions_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_investment]    Script Date: 03/02/2009 17:34:38 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investment]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_exclusions_investment] FOREIGN KEY([batch_optimisation_report_id], [investment_id])
REFERENCES [dbo].[investment] ([batch_optimisation_report_id], [investment_id])
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_investment]
GO
/****** Object:  ForeignKey [FK_investment_exclusions_investor]    Script Date: 03/02/2009 17:34:39 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investor]') AND type = 'F')
ALTER TABLE [dbo].[investment_exclusions]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_exclusions_investor] FOREIGN KEY([batch_optimisation_report_id], [investor_id])
REFERENCES [dbo].[investor] ([batch_optimisation_report_id], [investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_investor]
GO
/****** Object:  ForeignKey [FK_investor_batch_optimisation_report]    Script Date: 03/02/2009 17:34:47 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investor_client_folder]    Script Date: 03/02/2009 17:34:47 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_client_folder]') AND type = 'F')
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_client_folder] FOREIGN KEY([batch_optimisation_report_id], [client_folder_id])
REFERENCES [dbo].[client_folder] ([batch_optimisation_report_id], [client_folder_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_client_folder]
GO
/****** Object:  ForeignKey [FK_investor_category_path_exclusions_batch_optimisation_report]    Script Date: 03/02/2009 17:34:48 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[investor_category_path_exclusions]  WITH CHECK ADD  CONSTRAINT [FK_investor_category_path_exclusions_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[investor_category_path_exclusions] CHECK CONSTRAINT [FK_investor_category_path_exclusions_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_investor_category_path_exclusions_investor]    Script Date: 03/02/2009 17:34:49 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_category_path_exclusions]  WITH CHECK ADD  CONSTRAINT [FK_investor_category_path_exclusions_investor] FOREIGN KEY([batch_optimisation_report_id], [investor_id])
REFERENCES [dbo].[investor] ([batch_optimisation_report_id], [investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_category_path_exclusions] CHECK CONSTRAINT [FK_investor_category_path_exclusions_investor]
GO
/****** Object:  ForeignKey [FK_investor_model_portfolio_investor]    Script Date: 03/02/2009 17:34:50 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_model_portfolio]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_model_portfolio_investor] FOREIGN KEY([batch_optimisation_report_id], [investor_id])
REFERENCES [dbo].[investor] ([batch_optimisation_report_id], [investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_model_portfolio] CHECK CONSTRAINT [FK_investor_model_portfolio_investor]
GO
/****** Object:  ForeignKey [FK_investor_model_portfolio_model_portfolio]    Script Date: 03/02/2009 17:34:51 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_model_portfolio]') AND type = 'F')
ALTER TABLE [dbo].[investor_model_portfolio]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_model_portfolio_model_portfolio] FOREIGN KEY([batch_optimisation_report_id], [model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([batch_optimisation_report_id], [model_portfolio_id])
GO
ALTER TABLE [dbo].[investor_model_portfolio] CHECK CONSTRAINT [FK_investor_model_portfolio_model_portfolio]
GO
/****** Object:  ForeignKey [FK_investor_platform_investor]    Script Date: 03/02/2009 17:34:54 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_platform_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_platform]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_platform_investor] FOREIGN KEY([batch_optimisation_report_id], [investor_id])
REFERENCES [dbo].[investor] ([batch_optimisation_report_id], [investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_platform] CHECK CONSTRAINT [FK_investor_platform_investor]
GO
/****** Object:  ForeignKey [FK_investor_tax_lots_investment]    Script Date: 03/02/2009 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investment]') AND type = 'F')
ALTER TABLE [dbo].[investor_tax_lots]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_tax_lots_investment] FOREIGN KEY([batch_optimisation_report_id], [investment_id])
REFERENCES [dbo].[investment] ([batch_optimisation_report_id], [investment_id])
GO
ALTER TABLE [dbo].[investor_tax_lots] NOCHECK CONSTRAINT [FK_investor_tax_lots_investment]
GO
/****** Object:  ForeignKey [FK_investor_tax_lots_investor]    Script Date: 03/02/2009 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investor]') AND type = 'F')
ALTER TABLE [dbo].[investor_tax_lots]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_tax_lots_investor] FOREIGN KEY([batch_optimisation_report_id], [investor_id])
REFERENCES [dbo].[investor] ([batch_optimisation_report_id], [investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_tax_lots] CHECK CONSTRAINT [FK_investor_tax_lots_investor]
GO
/****** Object:  ForeignKey [FK_manager_mandate_batch_optimisation_report]    Script Date: 03/02/2009 17:35:03 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_manager_mandate_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[manager_mandate]  WITH CHECK ADD  CONSTRAINT [FK_manager_mandate_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manager_mandate] CHECK CONSTRAINT [FK_manager_mandate_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_market_batch_optimisation_report]    Script Date: 03/02/2009 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_market_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[market]  WITH CHECK ADD  CONSTRAINT [FK_market_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[market] CHECK CONSTRAINT [FK_market_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_market_currency]    Script Date: 03/02/2009 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_market_currency]') AND type = 'F')
ALTER TABLE [dbo].[market]  WITH CHECK ADD  CONSTRAINT [FK_market_currency] FOREIGN KEY([batch_optimisation_report_id], [currency_code])
REFERENCES [dbo].[currency] ([batch_optimisation_report_id], [currency_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[market] CHECK CONSTRAINT [FK_market_currency]
GO
/****** Object:  ForeignKey [FK_model_portfolio_batch_optimisation_report]    Script Date: 03/02/2009 17:35:08 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio] CHECK CONSTRAINT [FK_model_portfolio_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_batch_optimisation_report]    Script Date: 03/02/2009 17:35:10 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_model_portfolio]    Script Date: 03/02/2009 17:35:10 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_model_portfolio]') AND type = 'F')
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_model_portfolio] FOREIGN KEY([batch_optimisation_report_id], [model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([batch_optimisation_report_id], [model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_model_portfolio]
GO
/****** Object:  ForeignKey [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]    Script Date: 01/22/2010 14:31:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocations_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node] FOREIGN KEY([batch_optimisation_report_id], [model_portfolio_node_id], [model_portfolio_id])
REFERENCES [dbo].[model_portfolio_node] ([batch_optimisation_report_id], [node_id], [model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations] CHECK CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]
GO
/****** Object:  ForeignKey [FK_optimisation_report_batch_optimisation_report]    Script Date: 03/02/2009 17:35:13 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report]  WITH CHECK ADD  CONSTRAINT [FK_optimisation_report_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[optimisation_report] CHECK CONSTRAINT [FK_optimisation_report_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_optimisation_report]    Script Date: 03/02/2009 17:35:14 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report]  WITH CHECK ADD  CONSTRAINT [FK_optimisation_report_optimisation_report] FOREIGN KEY([optimisation_report_id])
REFERENCES [dbo].[optimisation_report] ([optimisation_report_id])
GO
ALTER TABLE [dbo].[optimisation_report] CHECK CONSTRAINT [FK_optimisation_report_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_implementation_optimisation_report]    Script Date: 03/02/2009 17:35:15 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_implementation_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report_implementation]  WITH CHECK ADD  CONSTRAINT [FK_optimisation_report_implementation_optimisation_report] FOREIGN KEY([optimisation_report_id])
REFERENCES [dbo].[optimisation_report] ([optimisation_report_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[optimisation_report_implementation] CHECK CONSTRAINT [FK_optimisation_report_implementation_optimisation_report]
GO
/****** Object:  ForeignKey [FK_optimisation_report_node_optimisation_report]    Script Date: 03/02/2009 17:35:22 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_optimisation_report_node_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[optimisation_report_node]  WITH NOCHECK ADD  CONSTRAINT [FK_optimisation_report_node_optimisation_report] FOREIGN KEY([optimisation_report_id])
REFERENCES [dbo].[optimisation_report] ([optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[optimisation_report_node] CHECK CONSTRAINT [FK_optimisation_report_node_optimisation_report]
GO
/****** Object:  ForeignKey [FK_order_implementation_process]    Script Date: 03/02/2009 17:35:25 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_order_implementation_process]') AND type = 'F')
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_implementation_process] FOREIGN KEY([implementation_process_id])
REFERENCES [dbo].[implementation_process] ([implementation_process_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_implementation_process]
GO
/****** Object:  ForeignKey [FK_order_traunch_order]    Script Date: 03/02/2009 17:35:30 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_order_traunch_order]') AND type = 'F')
ALTER TABLE [dbo].[order_traunch]  WITH CHECK ADD  CONSTRAINT [FK_order_traunch_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_traunch] CHECK CONSTRAINT [FK_order_traunch_order]
GO
/****** Object:  ForeignKey [FK_trade_batch_optimisation_report]    Script Date: 03/02/2009 17:35:36 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_batch_optimisation_report]') AND type = 'F')
ALTER TABLE [dbo].[trade]  WITH CHECK ADD  CONSTRAINT [FK_trade_batch_optimisation_report] FOREIGN KEY([batch_optimisation_report_id])
REFERENCES [dbo].[batch_optimisation_report] ([batch_optimisation_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[trade] CHECK CONSTRAINT [FK_trade_batch_optimisation_report]
GO
/****** Object:  ForeignKey [FK_trade_investment]    Script Date: 03/02/2009 17:35:36 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_investment]') AND type = 'F')
ALTER TABLE [dbo].[trade]  WITH NOCHECK ADD  CONSTRAINT [FK_trade_investment] FOREIGN KEY([batch_optimisation_report_id], [investment_id])
REFERENCES [dbo].[investment] ([batch_optimisation_report_id], [investment_id])
GO
ALTER TABLE [dbo].[trade] NOCHECK CONSTRAINT [FK_trade_investment]
GO
/****** Object:  ForeignKey [FK_trade_order]    Script Date: 03/02/2009 17:35:36 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_trade_order]') AND type = 'F')
ALTER TABLE [dbo].[trade]  WITH CHECK ADD  CONSTRAINT [FK_trade_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[trade] CHECK CONSTRAINT [FK_trade_order]
GO
/****** Object:  ForeignKey [FK_uncompliant_investors_compliance_report]    Script Date: 03/02/2009 17:35:39 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_uncompliant_investors_compliance_report]') AND type = 'F')
ALTER TABLE [dbo].[uncompliant_investors]  WITH CHECK ADD  CONSTRAINT [FK_uncompliant_investors_compliance_report] FOREIGN KEY([compliance_report_id])
REFERENCES [dbo].[compliance_report] ([compliance_report_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[uncompliant_investors] CHECK CONSTRAINT [FK_uncompliant_investors_compliance_report]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VersionInfo]') AND type in (N'U'))
DROP TABLE [dbo].[VersionInfo]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[fx_investments_view]'))
DROP VIEW [dbo].[fx_investments_view]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[investment_categories_helper_view]'))
DROP VIEW [dbo].[investment_categories_helper_view]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_fees_manager_mandates]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_fees]'))
ALTER TABLE dbo.manager_mandate_fees DROP CONSTRAINT FK_manager_mandate_fees_manager_mandates
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_order_export_permissions_investor_order_exports]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_order_export_permissions]'))
ALTER TABLE [dbo].[investor_order_export_permissions] DROP CONSTRAINT [FK_investor_order_export_permissions_investor_order_exports]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[category]'))
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FK_category_category_class]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[category]'))
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FK_category_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_allocation_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_allocation]'))
ALTER TABLE [dbo].[category_allocation] DROP CONSTRAINT [FK_category_allocation_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_allocation_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_allocation]'))
ALTER TABLE [dbo].[category_allocation] DROP CONSTRAINT [FK_category_allocation_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_fees_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_fees]'))
ALTER TABLE [dbo].[manager_mandate_fees] DROP CONSTRAINT [FK_manager_mandate_fees_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_class_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_class]'))
ALTER TABLE [dbo].[category_class] DROP CONSTRAINT [FK_category_class_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_relationship_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_relationship]'))
ALTER TABLE [dbo].[category_relationship] DROP CONSTRAINT [FK_category_relationship_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_relationship_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_relationship]'))
ALTER TABLE [dbo].[category_relationship] DROP CONSTRAINT [FK_category_relationship_category_class]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_folder_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[client_folder]'))
ALTER TABLE [dbo].[client_folder] DROP CONSTRAINT [FK_client_folder_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_folder_permissions_client_folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[client_folder_permissions]'))
ALTER TABLE [dbo].[client_folder_permissions] DROP CONSTRAINT [FK_client_folder_permissions_client_folder]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_metrics_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics] DROP CONSTRAINT [FK_compliance_metrics_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_metrics_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics] DROP CONSTRAINT [FK_compliance_metrics_compliance_regime]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_regime_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]'))
ALTER TABLE [dbo].[compliance_regime_categories] DROP CONSTRAINT [FK_compliance_regime_categories_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_regime_categories_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]'))
ALTER TABLE [dbo].[compliance_regime_categories] DROP CONSTRAINT [FK_compliance_regime_categories_compliance_regime]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template]'))
ALTER TABLE [dbo].[compliance_template] DROP CONSTRAINT [FK_compliance_template_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_node_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template_node]'))
ALTER TABLE [dbo].[compliance_template_node] DROP CONSTRAINT [FK_compliance_template_node_compliance_template]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_node_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template_node]'))
ALTER TABLE [dbo].[compliance_template_node] DROP CONSTRAINT [FK_compliance_template_node_compliance_regime]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_address]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact] DROP CONSTRAINT [FK_contact_address]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_address1]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact] DROP CONSTRAINT [FK_contact_address1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact] DROP CONSTRAINT [FK_contact_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_notes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact_notes]'))
ALTER TABLE [dbo].[contact_notes] DROP CONSTRAINT [FK_contact_notes_entity_attribute]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action]'))
ALTER TABLE [dbo].[corporate_action] DROP CONSTRAINT [FK_corporate_action_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action]'))
ALTER TABLE [dbo].[corporate_action] DROP CONSTRAINT [FK_corporate_action_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_capital_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]'))
ALTER TABLE [dbo].[corporate_action_capital_event] DROP CONSTRAINT [FK_corporate_action_capital_event_corporate_action_event]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_capital_event_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]'))
ALTER TABLE [dbo].[corporate_action_capital_event] DROP CONSTRAINT [FK_corporate_action_capital_event_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_code_change_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_code_change_event]'))
ALTER TABLE [dbo].[corporate_action_code_change_event] DROP CONSTRAINT [FK_corporate_action_code_change_event_corporate_action_event]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_event_corporate_action_option]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_event]'))
ALTER TABLE [dbo].[corporate_action_event] DROP CONSTRAINT [FK_corporate_action_event_corporate_action_option]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_income_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]'))
ALTER TABLE [dbo].[corporate_action_income_event] DROP CONSTRAINT [FK_corporate_action_income_event_corporate_action_event]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_income_event_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]'))
ALTER TABLE [dbo].[corporate_action_income_event] DROP CONSTRAINT [FK_corporate_action_income_event_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_option_corporate_action]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_option]'))
ALTER TABLE [dbo].[corporate_action_option] DROP CONSTRAINT [FK_corporate_action_option_corporate_action]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_sharing_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]'))
ALTER TABLE [dbo].[domain_sharing_permissions] DROP CONSTRAINT [FK_domain_sharing_permissions_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_sharing_permissions_domain1]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]'))
ALTER TABLE [dbo].[domain_sharing_permissions] DROP CONSTRAINT [FK_domain_sharing_permissions_domain1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_statistics_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_statistics]'))
ALTER TABLE [dbo].[domain_statistics] DROP CONSTRAINT [FK_domain_statistics_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_attribute_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[entity_attribute]'))
ALTER TABLE [dbo].[entity_attribute] DROP CONSTRAINT [FK_attribute_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [FK_investment_currency]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_market]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [FK_investment_market]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [FK_investment_allocation_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [FK_investment_allocation_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_history_manager_mandate_versions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation_history]'))
ALTER TABLE [dbo].[investment_allocation_history] DROP CONSTRAINT [FK_investment_allocation_history_manager_mandate_versions]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_categories]'))
ALTER TABLE [dbo].[investment_categories] DROP CONSTRAINT [FK_investment_categories_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_categories_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_categories]'))
ALTER TABLE [dbo].[investment_categories] DROP CONSTRAINT [FK_investment_categories_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_domain_permissions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_domain_permissions]'))
ALTER TABLE [dbo].[investment_domain_permissions] DROP CONSTRAINT [FK_investment_domain_permissions_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_substitute_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions] DROP CONSTRAINT [FK_investment_exclusions_substitute_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_overrides_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides] DROP CONSTRAINT [FK_investment_overrides_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_overrides_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides] DROP CONSTRAINT [FK_investment_overrides_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_price_history_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_price_history]'))
ALTER TABLE [dbo].[investment_price_history] DROP CONSTRAINT [FK_investment_price_history_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_price_history_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_price_history]'))
ALTER TABLE [dbo].[investment_price_history] DROP CONSTRAINT [FK_investment_price_history_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_transfer_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer] DROP CONSTRAINT [FK_investment_transfer_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_transfer_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer] DROP CONSTRAINT [FK_investment_transfer_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_upload_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]'))
ALTER TABLE [dbo].[investment_upload_permissions] DROP CONSTRAINT [FK_investment_upload_permissions_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_upload_permissions_investment_upload]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]'))
ALTER TABLE [dbo].[investment_upload_permissions] DROP CONSTRAINT [FK_investment_upload_permissions_investment_upload]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_compliance_template]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_client_folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_client_folder]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_contact]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [FK_investor_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_meta_data_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_meta_data]'))
ALTER TABLE [dbo].[investor_meta_data] DROP CONSTRAINT [FK_investor_meta_data_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_attributes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_attributes]'))
ALTER TABLE [dbo].[investor_attributes] DROP CONSTRAINT [FK_investor_attributes_entity_attribute]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_attributes_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_attributes]'))
ALTER TABLE [dbo].[investor_attributes] DROP CONSTRAINT [FK_investor_attributes_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_capital_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_capital_transactions]'))
ALTER TABLE [dbo].[investor_capital_transactions] DROP CONSTRAINT [FK_investor_capital_transactions_investor_transactions]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_cash_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_cash_transactions]'))
ALTER TABLE [dbo].[investor_cash_transactions] DROP CONSTRAINT [FK_investor_cash_transactions_investor_transactions]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]'))
ALTER TABLE [dbo].[investor_category_path_exclusions] DROP CONSTRAINT [FK_investor_category_path_exclusions_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations] DROP CONSTRAINT [FK_investor_contact_relations_contact]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_contact_relationship_types]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations] DROP CONSTRAINT [FK_investor_contact_relations_contact_relationship_types]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations] DROP CONSTRAINT [FK_investor_contact_relations_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_income_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_income_transactions]'))
ALTER TABLE [dbo].[investor_income_transactions] DROP CONSTRAINT [FK_investor_income_transactions_investor_transactions]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]'))
ALTER TABLE [dbo].[investor_model_portfolio] DROP CONSTRAINT [FK_investor_model_portfolio_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]'))
ALTER TABLE [dbo].[investor_model_portfolio] DROP CONSTRAINT [FK_investor_model_portfolio_model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_platform_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_platform]'))
ALTER TABLE [dbo].[investor_platform] DROP CONSTRAINT [FK_investor_platform_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_platform_wrap_platform_types]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_platform]'))
ALTER TABLE [dbo].[investor_platform] DROP CONSTRAINT [FK_investor_platform_wrap_platform_types]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_platform_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_platform]'))
ALTER TABLE [dbo].[investor_platform] DROP CONSTRAINT [FK_investor_platform_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]'))
ALTER TABLE [dbo].[investor_tax_lots] DROP CONSTRAINT [FK_investor_tax_lots_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]'))
ALTER TABLE [dbo].[investor_tax_lots] DROP CONSTRAINT [FK_investor_tax_lots_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_transactions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_transactions]'))
ALTER TABLE [dbo].[investor_transactions] DROP CONSTRAINT [FK_investor_transactions_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_transactions_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_transactions]'))
ALTER TABLE [dbo].[investor_transactions] DROP CONSTRAINT [FK_investor_transactions_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_user_permissions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_user_permissions]'))
ALTER TABLE [dbo].[investor_user_permissions] DROP CONSTRAINT [FK_investor_user_permissions_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate]'))
ALTER TABLE [dbo].[manager_mandate] DROP CONSTRAINT [FK_manager_mandate_category_class]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate]'))
ALTER TABLE [dbo].[manager_mandate] DROP CONSTRAINT [FK_manager_mandate_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]'))
ALTER TABLE [dbo].[manager_mandate_categories] DROP CONSTRAINT [FK_manager_mandate_categories_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_categories_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]'))
ALTER TABLE [dbo].[manager_mandate_categories] DROP CONSTRAINT [FK_manager_mandate_categories_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_versions_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_versions]'))
ALTER TABLE [dbo].[manager_mandate_versions] DROP CONSTRAINT [FK_manager_mandate_versions_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_market_currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[market]'))
ALTER TABLE [dbo].[market] DROP CONSTRAINT [FK_market_currency]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_mda_operator_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[mda_operator]'))
ALTER TABLE [dbo].[mda_operator] DROP CONSTRAINT [FK_mda_operator_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_mda_operator_domain1]') AND parent_object_id = OBJECT_ID(N'[dbo].[mda_operator]'))
ALTER TABLE [dbo].[mda_operator] DROP CONSTRAINT [FK_mda_operator_domain1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio]'))
ALTER TABLE [dbo].[model_portfolio] DROP CONSTRAINT [FK_model_portfolio_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio]'))
ALTER TABLE [dbo].[model_portfolio] DROP CONSTRAINT [FK_model_portfolio_compliance_template]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_attributes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]'))
ALTER TABLE [dbo].[model_portfolio_attributes] DROP CONSTRAINT [FK_model_portfolio_attributes_entity_attribute]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_attributes_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]'))
ALTER TABLE [dbo].[model_portfolio_attributes] DROP CONSTRAINT [FK_model_portfolio_attributes_model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_category_class]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_compliance_regime]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node] DROP CONSTRAINT [FK_model_portfolio_node_model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocation_override_model_portfolio_node_mandate_allocations]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocation_override]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocation_override] DROP CONSTRAINT [FK_model_portfolio_node_mandate_allocation_override_model_portfolio_node_mandate_allocations]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocations_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations] DROP CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_overrides_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]'))
ALTER TABLE [dbo].[model_portfolio_node_overrides] DROP CONSTRAINT [FK_model_portfolio_node_overrides_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_overrides_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]'))
ALTER TABLE [dbo].[model_portfolio_node_overrides] DROP CONSTRAINT [FK_model_portfolio_node_overrides_model_portfolio_node]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]'))
ALTER TABLE [dbo].[model_portfolio_permissions] DROP CONSTRAINT [FK_model_portfolio_permissions_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_permissions_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]'))
ALTER TABLE [dbo].[model_portfolio_permissions] DROP CONSTRAINT [FK_model_portfolio_permissions_model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_process_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_process]'))
ALTER TABLE [dbo].[reconciliation_process] DROP CONSTRAINT [FK_reconciliation_process_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_registry_systems_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]'))
ALTER TABLE [dbo].[reconciliation_registry_systems] DROP CONSTRAINT [FK_reconciliation_registry_systems_reconciliation_process]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_registry_systems_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]'))
ALTER TABLE [dbo].[reconciliation_registry_systems] DROP CONSTRAINT [FK_reconciliation_registry_systems_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_report_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_report]'))
ALTER TABLE [dbo].[reconciliation_report] DROP CONSTRAINT [FK_reconciliation_report_reconciliation_process]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_tax_lots_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]'))
ALTER TABLE [dbo].[reconciliation_tax_lots] DROP CONSTRAINT [FK_reconciliation_tax_lots_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_tax_lots_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]'))
ALTER TABLE [dbo].[reconciliation_tax_lots] DROP CONSTRAINT [FK_reconciliation_tax_lots_reconciliation_process]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tax_lot_upload_log_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]'))
ALTER TABLE [dbo].[tax_lot_upload_log] DROP CONSTRAINT [FK_tax_lot_upload_log_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tax_lot_upload_log_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]'))
ALTER TABLE [dbo].[tax_lot_upload_log] DROP CONSTRAINT [FK_tax_lot_upload_log_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user]'))
ALTER TABLE [dbo].[web_user] DROP CONSTRAINT [FK_web_user_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_group_users_web_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user_group_users]'))
ALTER TABLE [dbo].[web_user_group_users] DROP CONSTRAINT [FK_web_user_group_users_web_user]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_group_users_web_user_group]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user_group_users]'))
ALTER TABLE [dbo].[web_user_group_users] DROP CONSTRAINT [FK_web_user_group_users_web_user_group]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wrap_platform_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]'))
ALTER TABLE [dbo].[wrap_platform_permissions] DROP CONSTRAINT [FK_wrap_platform_permissions_domain]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wrap_platform_permissions_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]'))
ALTER TABLE [dbo].[wrap_platform_permissions] DROP CONSTRAINT [FK_wrap_platform_permissions_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_scheduled_data_feeds_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[scheduled_data_feeds]'))
ALTER TABLE [dbo].[scheduled_data_feeds] DROP CONSTRAINT [FK_scheduled_data_feeds_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_compliance_metrics]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics] DROP CONSTRAINT [CK_compliance_metrics]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_recommendation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [CK_investment_recommendation]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_unit_size]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment] DROP CONSTRAINT [CK_investment_unit_size]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_allocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation] DROP CONSTRAINT [CK_investment_allocation]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_overrides_recommendation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides] DROP CONSTRAINT [CK_investment_overrides_recommendation]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_overrides_unit_size]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides] DROP CONSTRAINT [CK_investment_overrides_unit_size]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_transfer]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer] DROP CONSTRAINT [CK_investment_transfer]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor] DROP CONSTRAINT [CK_investor]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact] DROP CONSTRAINT [CK_contact]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_orders_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_orders]'))
ALTER TABLE [dbo].[investor_orders] DROP CONSTRAINT [FK_investor_orders_investor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_orders_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_orders]'))
ALTER TABLE [dbo].[investor_orders] DROP CONSTRAINT [FK_investor_orders_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_orders_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_orders]'))
ALTER TABLE [dbo].[investor_orders] DROP CONSTRAINT [FK_investor_orders_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_work_in_progress_investment]') 
AND parent_object_id = OBJECT_ID(N'[dbo].[work_in_progress]'))
ALTER TABLE [dbo].[work_in_progress] DROP CONSTRAINT [FK_work_in_progress_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_work_in_progress_investor_platform]') 
AND parent_object_id = OBJECT_ID(N'[dbo].[work_in_progress]'))
ALTER TABLE [dbo].[work_in_progress] DROP CONSTRAINT [FK_work_in_progress_investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_work_in_progress_policies_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[work_in_progress_policies]'))
ALTER TABLE [dbo].[work_in_progress_policies] DROP CONSTRAINT [FK_work_in_progress_policies_wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_work_in_progress_investment1]') AND parent_object_id = OBJECT_ID(N'[dbo].[work_in_progress]'))
ALTER TABLE [dbo].[work_in_progress] DROP CONSTRAINT [FK_work_in_progress_investment1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Column_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_dashboard_column]'))
ALTER TABLE dbo.widget_dashboard_column	DROP CONSTRAINT FK_Column_Page
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_widget_instance_dashboard_column]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_instance]'))
ALTER TABLE dbo.widget_instance	DROP CONSTRAINT FK_widget_instance_dashboard_column	
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_default_widget_user_setting_widget]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_default_user_setting]'))	
ALTER TABLE dbo.widget_default_user_setting	DROP CONSTRAINT FK_default_widget_user_setting_widget
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_widget_domain_permission_widget]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_domain_permission]'))
ALTER TABLE dbo.widget_domain_permission DROP CONSTRAINT FK_widget_domain_permission_widget
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WidgetInstance_Widget]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_instance]'))
ALTER TABLE dbo.widget_instance	DROP CONSTRAINT FK_WidgetInstance_Widget
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_widget_role_permission_widget]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_role_permission]'))
ALTER TABLE dbo.widget_role_permission	DROP CONSTRAINT FK_widget_role_permission_widget
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_widget_domain_permission_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_domain_permission]'))
ALTER TABLE dbo.widget_domain_permission DROP CONSTRAINT FK_widget_domain_permission_domain
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WidgetInstanceUserSetting_WidgetInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[widget_instance_user_setting]'))	
ALTER TABLE dbo.widget_instance_user_setting DROP CONSTRAINT FK_WidgetInstanceUserSetting_WidgetInstance
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_investment]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_override_investment_category_map]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map_override]'))
ALTER TABLE [dbo].[investment_category_map_override] DROP CONSTRAINT [FK_investment_category_map_override_investment_category_map]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category1_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category1_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category2_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category2_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category3_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category3_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category4_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category4_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category5_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category5_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category6_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category6_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category7_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category7_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category8_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category8_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category9_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category9_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_category_map_category10_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_category_map]'))
ALTER TABLE [dbo].[investment_category_map] DROP CONSTRAINT [FK_investment_category_map_category10_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_override_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_override]'))
ALTER TABLE [dbo].[category_override] DROP CONSTRAINT [FK_category_override_category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_node_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template_node]'))
ALTER TABLE [dbo].[compliance_template_node] DROP CONSTRAINT [FK_compliance_template_node_category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_event]') AND type in (N'U'))
DROP TABLE [dbo].[domain_event]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[command_error]') AND type in (N'U'))
DROP TABLE [dbo].[command_error]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hibernate_unique_key]') AND type in (N'U'))
DROP TABLE [dbo].[hibernate_unique_key]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_changelog]') AND type in (N'U'))
DROP TABLE [dbo].[fee_changelog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[holding_rec_investor_platforms]') AND type in (N'U'))
DROP TABLE [dbo].[holding_rec_investor_platforms]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_external_ids]') AND type in (N'U'))
DROP TABLE [dbo].[web_user_external_ids]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_overrides]') AND type in (N'U'))
DROP TABLE [dbo].[investment_overrides]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_domain_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[investment_domain_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_fum_log]') AND type in (N'U'))
DROP TABLE [dbo].[investor_fum_log]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]') AND type in (N'U'))
DROP TABLE [dbo].[investor_tax_lots]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]') AND type in (N'U'))
DROP TABLE [dbo].[tax_lot_upload_log]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[domain_statistics]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_exclusions]') AND type in (N'U'))
DROP TABLE [dbo].[investment_exclusions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[domain_sharing_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]') AND type in (N'U'))
DROP TABLE [dbo].[reconciliation_tax_lots]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_price_history]') AND type in (N'U'))
DROP TABLE [dbo].[investment_price_history]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_report]') AND type in (N'U'))
DROP TABLE [dbo].[reconciliation_report]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]') AND type in (N'U'))
DROP TABLE [dbo].[investor_contact_relations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_tmp]') AND type in (N'U'))
DROP TABLE [dbo].[investment_tmp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_relationships]') AND type in (N'U'))
DROP TABLE [dbo].[web_user_relationships]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_category_path_exclusions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_capital_transactions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_capital_transactions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[application_info]') AND type in (N'U'))
DROP TABLE [dbo].[application_info]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[id_generator]') AND type in (N'U'))
DROP TABLE [dbo].[id_generator]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_income_transactions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_income_transactions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[published_files]') AND type in (N'U'))
DROP TABLE [dbo].[published_files]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_queue]') AND type in (N'U'))
DROP TABLE [dbo].[email_queue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_log]') AND type in (N'U'))
DROP TABLE [dbo].[entity_log]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_template_node]') AND type in (N'U'))
DROP TABLE [dbo].[compliance_template_node]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pe_settings]') AND type in (N'U'))
DROP TABLE [dbo].[pe_settings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[compliance_metrics]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]') AND type in (N'U'))
DROP TABLE [dbo].[compliance_regime_categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_relationship]') AND type in (N'U'))
DROP TABLE [dbo].[category_relationship]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_categories]') AND type in (N'U'))
DROP TABLE [dbo].[investment_categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact_notes]') AND type in (N'U'))
DROP TABLE [dbo].[contact_notes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_attributes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[batch_reporting_jobs]') AND type in (N'U'))
DROP TABLE [dbo].[batch_reporting_jobs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_allocation_history]') AND type in (N'U'))
DROP TABLE [dbo].[investment_allocation_history]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_group_users]') AND type in (N'U'))
DROP TABLE [dbo].[web_user_group_users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_allocation]') AND type in (N'U'))
DROP TABLE [dbo].[category_allocation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action_income_event]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_allocation]') AND type in (N'U'))
DROP TABLE [dbo].[investment_allocation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]') AND type in (N'U'))
DROP TABLE [dbo].[manager_mandate_categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action_capital_event]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[investment_upload_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_code_change_event]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action_code_change_event]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_folder_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[client_folder_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mda_operator]') AND type in (N'U'))
DROP TABLE [dbo].[mda_operator]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]') AND type in (N'U'))
DROP TABLE [dbo].[reconciliation_registry_systems]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[wrap_platform_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_node_overrides]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocation_override]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_node_mandate_allocation_override]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_meta_data]') AND type in (N'U'))
DROP TABLE [dbo].[investor_meta_data]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_platform]') AND type in (N'U'))
DROP TABLE [dbo].[investor_platform]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_class_override]') AND type in (N'U'))
DROP TABLE [dbo].[category_class_override]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_class]') AND type in (N'U'))
DROP TABLE [dbo].[category_class]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_process]') AND type in (N'U'))
DROP TABLE [dbo].[reconciliation_process]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
DROP TABLE [dbo].[contact]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact_relationship_types]') AND type in (N'U'))
DROP TABLE [dbo].[contact_relationship_types]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_option]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action_option]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_transactions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_transactions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_template]') AND type in (N'U'))
DROP TABLE [dbo].[compliance_template]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_regime]') AND type in (N'U'))
DROP TABLE [dbo].[compliance_regime]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_category_map_override]') AND type in (N'U'))
DROP TABLE [dbo].[investment_category_map_override]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_category_map]') AND type in (N'U'))
DROP TABLE [dbo].[investment_category_map]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_override]') AND type in (N'U'))
DROP TABLE [dbo].[category_override]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
DROP TABLE [dbo].[category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[entity_attribute]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[market]') AND type in (N'U'))
DROP TABLE [dbo].[market]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_versions]') AND type in (N'U'))
DROP TABLE [dbo].[manager_mandate_versions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate]') AND type in (N'U'))
DROP TABLE [dbo].[manager_mandate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_group]') AND type in (N'U'))
DROP TABLE [dbo].[web_user_group]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user]') AND type in (N'U'))
DROP TABLE [dbo].[web_user]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_schedule_history]') AND type in (N'U'))
DROP TABLE [dbo].[fee_schedule_history]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_item_history]') AND type in (N'U'))
DROP TABLE [dbo].[fee_item_history]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_codes]') AND type in (N'U'))
DROP TABLE [dbo].[tax_codes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_group_history]') AND type in (N'U'))
DROP TABLE [dbo].[fee_group_history]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_queue]') AND type in (N'U'))
DROP TABLE [dbo].[fee_queue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_default_domain]') AND type in (N'U'))
DROP TABLE [dbo].[fee_default_domain]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_default_investor]') AND type in (N'U'))
DROP TABLE [dbo].[fee_default_investor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_changelog]') AND type in (N'U'))
DROP TABLE [dbo].[fee_changelog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_event]') AND type in (N'U'))
DROP TABLE [dbo].[corporate_action_event]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_upload]') AND type in (N'U'))
DROP TABLE [dbo].[investment_upload]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform]') AND type in (N'U'))
DROP TABLE [dbo].[wrap_platform]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduled_data_feeds]') AND type in (N'U'))
DROP TABLE [dbo].[scheduled_data_feeds]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_node]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]') AND type in (N'U'))
DROP TABLE [dbo].[model_portfolio_node_mandate_allocations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment]') AND type in (N'U'))
DROP TABLE [dbo].[investment]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor]') AND type in (N'U'))
DROP TABLE [dbo].[investor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain]') AND type in (N'U'))
DROP TABLE [dbo].[domain]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_folder]') AND type in (N'U'))
DROP TABLE [dbo].[client_folder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[address]') AND type in (N'U'))
DROP TABLE [dbo].[address]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currency]') AND type in (N'U'))
DROP TABLE [dbo].[currency]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_user_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_user_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[linked_investors]') AND type in (N'U'))
DROP TABLE [dbo].[linked_investors]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_transfer]') AND type in (N'U'))
DROP TABLE [dbo].[investment_transfer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]') AND type in (N'U'))
DROP TABLE [dbo].[investor_model_portfolio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_attributes]') AND type in (N'U'))
DROP TABLE [dbo].[investor_attributes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_cash_transactions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_cash_transactions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_orders]') AND type in (N'U'))
DROP TABLE [dbo].[investor_orders]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform_types]') AND type in (N'U'))
DROP TABLE [dbo].[wrap_platform_types]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[work_in_progress]') AND type in (N'U'))
DROP TABLE [dbo].[work_in_progress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[work_in_progress_policies]') AND type in (N'U'))
DROP TABLE [dbo].[work_in_progress_policies]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_order_exports]') AND type in (N'U'))
DROP TABLE [dbo].[investor_order_exports]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_order_export_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[investor_order_export_permissions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_fees]') AND type in (N'U'))
DROP TABLE [dbo].[manager_mandate_fees]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget]') AND type in (N'U'))
DROP TABLE [dbo].[widget]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_domain_permission]') AND type in (N'U'))
DROP TABLE [dbo].[widget_domain_permission]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_dashboard_page]') AND type in (N'U'))
DROP TABLE [dbo].[widget_dashboard_page]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_dashboard_column]') AND type in (N'U'))
DROP TABLE [dbo].[widget_dashboard_column]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_role_permission]') AND type in (N'U'))
DROP TABLE [dbo].[widget_role_permission]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_default_user_setting]') AND type in (N'U'))
DROP TABLE [dbo].[widget_default_user_setting]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_instance]') AND type in (N'U'))
DROP TABLE [dbo].[widget_instance]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[widget_instance_user_setting]') AND type in (N'U'))
DROP TABLE [dbo].[widget_instance_user_setting]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.[command_error] (
	[command_data] ntext not null,
	[command_type] nvarchar(256) not null,
	[created_date] datetime not null,
	[domain_id] nvarchar(50) not null,
	[response_id] uniqueidentifier not null,
	[response_data] ntext not null,
	[response_status] smallint not null,
	[serializer_type] nvarchar(256) not null,
	[user_id] nvarchar(101) not null,
	CONSTRAINT [PK_command_response_id] PRIMARY KEY CLUSTERED (
		[response_id] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] 

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.[domain_event] (
	[event_id] bigint not null,
	[aggregate_id] nvarchar(128),
	[user_id] nvarchar(101),
	[date_created] datetime not null,
	[aggregate_type] nvarchar(256) not null,
	[serializer_type] nvarchar(256) not null,
	[event_type] nvarchar(256) not null,
	[data] ntext,
	CONSTRAINT [PK_event_id] PRIMARY KEY CLUSTERED (
		[event_id] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] 

GO

CREATE TABLE [dbo].[hibernate_unique_key](
    [next_hi] [int] NULL
) ON [PRIMARY]

INSERT INTO hibernate_unique_key(next_hi) VALUES (0)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform_types]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wrap_platform_types](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[include_in_rebalancing] [bit] NOT NULL,
	[is_default] [bit] NOT NULL,
	[is_active] [bit] NOT NULL CONSTRAINT [DF_wrap_platform_types_test]  DEFAULT ((1)),
	[reserve_all] bit NOT NULL CONSTRAINT DF_wrap_platform_types_reserve_all DEFAULT ((0)),
 CONSTRAINT [PK_wrap_platform_types] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[linked_investors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[linked_investors](
	[combined_investor_id] [uniqueidentifier] NOT NULL,
	[linked_investor_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_linked_investors] PRIMARY KEY CLUSTERED 
(
	[combined_investor_id] ASC,
	[linked_investor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_relationships]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_user_relationships](
	[user_id] [nvarchar](101) NOT NULL,
	[has_ralationship_with_user_id] [nvarchar](101) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[holding_rec_investor_platforms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[holding_rec_investor_platforms](
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
	[process_id] [uniqueidentifier] NOT NULL,
	[reconcile_holdings] [bit] NOT NULL,
 CONSTRAINT [PK_holding_rec_investor_platforms] PRIMARY KEY CLUSTERED 
(
	[process_id] ASC,
	[investor_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_external_ids]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_user_external_ids](
	[user_id] [nvarchar](101) NOT NULL,
	[external_type] [int] NOT NULL,
	[external_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_web_user_external_ids] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[external_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domain](
	[domain_id] [nvarchar](50) NOT NULL,
	[domain_name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
	[is_system_domain] [bit] NOT NULL,
	[model_portfolio_upload_assembly] [nvarchar](100) NULL CONSTRAINT [DF_domain_model_portfolio_upload_assembly]  DEFAULT (N'Ima.ServiceAgents'),
	[model_portfolio_upload_class] [nvarchar](100) NULL CONSTRAINT [DF_domain_model_portfolio_upload_class]  DEFAULT (N'Ima.ServiceAgents.DefaultModelPortfolioAgent'),
	[model_portfolio_upload_user_control] [nvarchar](100) NULL CONSTRAINT [DF_domain_model_portfolio_upload_user_control]  DEFAULT (N'ModelPortfolioUploadControls/DefaultModelPortfolioUploader.ascx'),
	[investor_upload_assembly] [nvarchar](100) NULL CONSTRAINT [DF_domain_investor_upload_assembly]  DEFAULT (N'Ima.ServiceAgents'),
	[investor_upload_class] [nvarchar](100) NULL CONSTRAINT [DF_domain_investor_upload_class]  DEFAULT (N'Ima.ServiceAgents.DefaultInvestorAgent'),
	[investor_upload_user_control] [nvarchar](100) NULL CONSTRAINT [DF_domain_investor_upload_user_control]  DEFAULT (N'InvestorUploadControls/DefaultInvestorUploader.ascx'),
	[display_props] [int] NOT NULL CONSTRAINT [DF_domain_display_props]  DEFAULT ((6)),
	[bulk_trade_export_type] [nvarchar](200) NULL,
	[custom_rebalancing_report_type] [nvarchar](200) NULL,
	[license_expiry] [datetime] NULL,
	[max_investors] [nvarchar](50) NOT NULL CONSTRAINT [DF_domain_max_investors]  DEFAULT (N'g/pB4/kJlVzZ9IuyxIem98mtuNsXyp4DIjq1s47xNJQ='),
	[authorisation_mode] [int] NOT NULL CONSTRAINT [DF_domain_is_enterprise]  DEFAULT ((0)),
	[is_mda_operator] [bit] NOT NULL CONSTRAINT [DF_domain_is_mda_operator]  DEFAULT ((1)),
	[reconciliation_service_type] [nvarchar](200) NULL,
	[allow_investor_login] [bit] NOT NULL CONSTRAINT [DF_domain_allow_investor_login]  DEFAULT ((0)),
	[historical_price_upload_type] [nvarchar](200) NULL,
	[historical_price_upload_uc] [nvarchar](100) NULL,
	[corporate_action_upload_type] [nvarchar](200) NULL,
	[corporate_action_upload_uc] [nvarchar](100) NULL,
	[investor_export_type] [nvarchar](200) NULL,
	[display_props2] [int] NOT NULL CONSTRAINT [DF_domain_display_props2]  DEFAULT ((0)),
	[bulk_trade_export_type2] [nvarchar](200) NULL,
	[platform_implementation_url] [nvarchar](200) NULL,
	[investment_export_type] [nvarchar](200) NULL,
	[contact_id] [uniqueidentifier] NULL,
	[order_implementation_alert_email] [nvarchar](100) NULL,
	[custom_portfolio_report_type] [nvarchar](200) NULL,
	[order_export_type] [nvarchar](200) NULL,
	[default_theme] [nvarchar](50) NULL,
	[logo_url] [nvarchar](200) NULL,
	[financial_year_start_date] [datetime] NULL,
 CONSTRAINT [PK_domain] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[application_info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[application_info](
	[database_level] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_regime]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[compliance_regime](
	[compliance_regime_id] [uniqueidentifier] NOT NULL,
	[compliance_regime_name] [nvarchar](100) NOT NULL,
	[category_class_id] [uniqueidentifier] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_edited] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NULL,
	[comment] [nvarchar](511) NOT NULL,
 CONSTRAINT [PK_compliance_regime] PRIMARY KEY CLUSTERED 
(
	[compliance_regime_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_upload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_upload](
	[investment_upload_id] [int] NOT NULL,
	[investment_upload_name] [nvarchar](50) NOT NULL,
	[upload_type] [nvarchar](100) NOT NULL,
	[user_control] [nvarchar](100) NOT NULL,
	[pe_user_control] [nvarchar](100) NULL,
 CONSTRAINT [PK_investment_upload] PRIMARY KEY CLUSTERED 
(
	[investment_upload_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[id_generator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[id_generator](
	[function_name] [nvarchar](50) NOT NULL,
	[next_id] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[currency](
	[currency_code] [nchar](3) NOT NULL,
	[currency_name] [nvarchar](100) NOT NULL,
	[exchange_rate] [money] NOT NULL,
	[is_default] [bit] NOT NULL,
 CONSTRAINT [PK_currency] PRIMARY KEY CLUSTERED 
(
	[currency_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[published_files]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[published_files](
	[published_file_id] [uniqueidentifier] NOT NULL,
	[file_name] [nvarchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[file_data] [image] NOT NULL,
	[entity_type] [smallint] NOT NULL,
	[owner_id] [nvarchar](101) NOT NULL,
	[owner_user_id] [nvarchar](101) NULL,
	[job_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_published_files] PRIMARY KEY CLUSTERED 
(
	[published_file_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_queue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[email_queue](
	[email_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_email_queue_email_id]  DEFAULT (newid()),
	[email_priority] [int] NOT NULL,
	[email_body_format] [smallint] NOT NULL,
	[email_to] [nvarchar](2000) NULL,
	[email_cc] [ntext] NULL,
	[email_bcc] [ntext] NULL,
	[email_from] [nvarchar](255) NULL,
	[email_subject] [nvarchar](1023) NULL,
	[email_body] [ntext] NULL,
	[next_try_time] [datetime] NOT NULL CONSTRAINT [DF_email_queue_next_try_time]  DEFAULT ('1/1/1979'),
	[number_of_tries] [int] NOT NULL CONSTRAINT [DF_email_queue_number_of_tries]  DEFAULT ((0)),
	[published_file_id] [uniqueidentifier] NULL,
	[contact_id] [uniqueidentifier] NULL,
	[user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_email_queue] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entity_log](
	[date] [datetime] NOT NULL,
	[host] [nvarchar](50) NULL,
	[thread_id] [int] NULL,
	[client_ip] [nvarchar](15) NULL,
	[log_level] [nvarchar](50) NOT NULL,
	[logger] [nvarchar](50) NOT NULL,
	[user_id] [nvarchar](101) NULL,
	[entity] [nvarchar](50) NULL,
	[message] [nvarchar](2000) NULL,
	[exception] [nvarchar](2000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_user_group](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[group_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_web_user_group] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wrap_platform](
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_name] [nvarchar](100) NOT NULL,
	[assembly] [nvarchar](100) NULL,
	[class_name] [nvarchar](100) NULL,
	[user_control] [nvarchar](100) NULL,
	[broker_link_url] [nvarchar](100) NULL,
	[broker_allocation_url] [nvarchar](100) NULL,
	[broker_order_status_url] [nvarchar](100) NULL,
	[portfolio_id_name] [nvarchar](50) NULL,
	[transaction_export_type] [nvarchar](200) NULL,
	[permission] [int] NOT NULL CONSTRAINT [DF_wrap_platform_permission]  DEFAULT ((7)),
	[reconcile_holdings] [bit] NOT NULL,
	[data_lag] [int] NOT NULL CONSTRAINT [DF_wrap_platform_data_lag]  DEFAULT ((0)),
	[pe_user_control] [nchar](100) NULL,
	[data_feed_configuration] [int] NOT NULL CONSTRAINT DF_wrap_platform_data_feed_configuration DEFAULT 0,
 CONSTRAINT [PK_wrap_platform] PRIMARY KEY CLUSTERED 
(
	[wrap_platform_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO
CREATE TABLE dbo.scheduled_data_feeds
	(
	scheduled_data_feed_id uniqueidentifier NOT NULL,
	[name] nvarchar(50) NOT NULL,
	runat_hour float NOT NULL,
	days_of_week nvarchar(30) NULL,
	owner_domain_id nvarchar(50) NOT NULL,
	principal_domain_id nvarchar(50) NOT NULL,
	principal_user_id nvarchar(101) NULL,
	principal_roles nvarchar(100) NULL,
	wrap_platform_id int NOT NULL,
	report_email_address nvarchar(500) NOT NULL,
	base_file_path nvarchar(200) NOT NULL,
	last_run_time datetime NOT NULL,
	last_run_status smallint NOT NULL,
	current_status smallint NOT NULL,
	is_enabled bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.scheduled_data_feeds ADD CONSTRAINT
	PK_scheduled_data_feeds PRIMARY KEY CLUSTERED 
	(
	scheduled_data_feed_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO
ALTER TABLE dbo.scheduled_data_feeds ADD CONSTRAINT
	FK_scheduled_data_feeds_wrap_platform FOREIGN KEY
	(
	wrap_platform_id
	) REFERENCES dbo.wrap_platform
	(
	wrap_platform_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[address](
	[address_id] [uniqueidentifier] NOT NULL,
	[street_address] [nvarchar](100) NULL,
	[suburb] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[postcode] [nvarchar](20) NULL,
	[country] [nvarchar](50) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[batch_reporting_jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[batch_reporting_jobs](
	[job_id] [uniqueidentifier] NOT NULL,
	[job_name] [nvarchar](100) NOT NULL,
	[report_type] [nvarchar](255) NULL,
	[template_file] [image] NULL,
	[start_date] [datetime] NOT NULL,
	[complete_date] [datetime] NULL,
	[job_status] [smallint] NOT NULL,
	[error_text] [nvarchar](1000) NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_batch_reporting_jobs] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pe_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pe_settings](
	[domain_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[create_investments] [smallint] NULL,
	[change_unit_price] [smallint] NULL,
	[change_recommendation] [smallint] NULL,
	[change_dps] [smallint] NULL,
	[change_franking] [smallint] NULL,
	[change_target_price] [smallint] NULL,
	[change_investment_category] [smallint] NULL,
	[default_mode] [smallint] NULL,
	[allow_category_mode] [smallint] NULL,
	[allow_model_mode] [smallint] NULL,
	[allow_pick_list_mode] [smallint] NULL,
	[default_category_class] [uniqueidentifier] NULL,
	[default_report_image] [image] NULL,
	[create_risk_profile] [smallint] NULL CONSTRAINT [DF_pe_settings_create_risk_profile]  DEFAULT ((1)),
	[modify_risk_profile] [smallint] NULL CONSTRAINT [DF_pe_settings_modify_risk_profile]  DEFAULT ((1)),
	[delete_risk_profile] [smallint] NULL CONSTRAINT [DF_pe_settings_delete_risk_profile]  DEFAULT ((1)),
	[create_model] [smallint] NULL CONSTRAINT [DF_pe_settings_create_model]  DEFAULT ((1)),
	[modify_model] [smallint] NULL CONSTRAINT [DF_pe_settings_modify_model]  DEFAULT ((1)),
	[delete_model] [smallint] NULL CONSTRAINT [DF_pe_settings_delete_model]  DEFAULT ((1)),
	[create_pick_list] [smallint] NULL CONSTRAINT [DF_pe_settings_create_pick_list]  DEFAULT ((1)),
	[modify_pick_list] [smallint] NULL CONSTRAINT [DF_pe_settings_modify_pick_list]  DEFAULT ((1)),
	[delete_pick_list] [smallint] NULL CONSTRAINT [DF_pe_settings_delete_pick_list]  DEFAULT ((1)),
	[enable_compliance_workflow] [smallint] NOT NULL CONSTRAINT [DF_pe_settings_enable_compliance_workflow]  DEFAULT ((0)),
	[default_cgt_minimum_months] [int] NULL,
	[default_legal_structure] [smallint] NULL,
	[default_min_security_balance] [money] NULL,
	[default_min_trade_lot_size] [money] NULL,
	[default_enable_correlation] [bit] NULL,
	[default_distribute_excess_from_rating] [smallint] NULL,
	[default_distribute_excess_from_exclusion] [smallint] NULL,
	[default_distribute_excess_from_trade] [smallint] NULL,
	[default_unmanaged_investment_handling] [smallint] NULL,
	[default_marginal_tax_rate] [int] NULL,
	[default_tax_lot_selection] [smallint] NULL,
	[default_cgt_preferences] [smallint] NULL,
	[default_cgt_maximum_months] [int] NULL,
	[default_cgt_percent] [float] NULL,
	[default_minimum_holding_weeks] [int] NULL,
	[default_base_currency_code] nchar(3) NULL,
	[model_alignment_maximum_alert] float NULL,
	[model_alignment_minimum_alert] float NULL,
 CONSTRAINT [PK_pe_settings] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[owner_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact_relationship_types]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contact_relationship_types](
	[contact_relationship_type_id] [uniqueidentifier] NOT NULL,
	[display_order] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[parent_description] [nvarchar](50) NOT NULL,
	[child_description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_contact_relationship_types] PRIMARY KEY CLUSTERED 
(
	[contact_relationship_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_node](
	[node_id] [int] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[parent_node_id] [int] NULL,
	[category_id] [uniqueidentifier] NULL,
	[mandate_guid] [uniqueidentifier] NULL,
	[category_class_id] [uniqueidentifier] NULL,
	[compliance_regime_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_model_portfolio_node] PRIMARY KEY CLUSTERED 
(
	[node_id] ASC,
	[model_portfolio_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_allocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category_allocation](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[recommendation] [smallint] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[reserve_all] [bit] NOT NULL CONSTRAINT [DF_category_allocation_reserve_all]  DEFAULT ((0)),
	[drift_alert] [float](53) NULL,
 CONSTRAINT [PK_category_allocation] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC,
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_allocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_allocation](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[recommendation] [smallint] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[reserve_all] [bit] NOT NULL CONSTRAINT [DF_investment_allocation_reserve_all]  DEFAULT ((0)),
	[buy_price] [money] NULL,
	[sell_price] [money] NULL,
	[max_increment] [real] NULL,
	[dynamic_rating_option] [smallint] NULL,
	[drift_alert] [float](53) NULL,
 CONSTRAINT [PK_investment_allocation] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC,
	[investment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_versions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[manager_mandate_versions](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[version] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
 CONSTRAINT [PK_manager_mandate_versions] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC,
	[version] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[manager_mandate_categories](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_manager_mandate_categories] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC,
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_capital_transactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_capital_transactions](
	[transaction_id] [uniqueidentifier] NOT NULL,
	[quantity] [float] NOT NULL,
	[brokerage] [money] NOT NULL,
	[charges] [money] NOT NULL,
	[gst] [money] NOT NULL,
	[stamp_duty] [money] NOT NULL,
	[cgt_method] [smallint] NOT NULL CONSTRAINT [DF_investor_capital_transactions_cgt_method]  DEFAULT ((0)),
	[cost_base_adjustment] [money] NOT NULL CONSTRAINT [DF_investor_capital_transactions_cost_base_adjustment]  DEFAULT ((0)),
	[reduced_cost_base_adjustment] [money] NOT NULL CONSTRAINT [DF_investor_capital_transactions_reduced_cost_base_adjustment]  DEFAULT ((0)),
	[tax_cost_base_adjustment] [money] NOT NULL CONSTRAINT [DF_investor_capital_transactions_tax_cost_base_adjustment]  DEFAULT ((0)),
	[implementation_process_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_investor_capital_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_cash_transactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_cash_transactions](
	[transaction_id] [uniqueidentifier] NOT NULL,
	[cash_account_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_investor_cash_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_income_transactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_income_transactions](
	[transaction_id] [uniqueidentifier] NOT NULL,
	[franked_amount] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_franked_amount]  DEFAULT ((0)),
	[unfranked_amount] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_unfranked_amount]  DEFAULT ((0)),
	[domestic_interest] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_interest]  DEFAULT ((0)),
	[domestic_other_income] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_other_income]  DEFAULT ((0)),
	[domestic_withholding_tax] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_withholding_tax]  DEFAULT ((0)),
	[foreign_interest] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_interest]  DEFAULT ((0)),
	[foreign_other_income] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_other_income]  DEFAULT ((0)),
	[foreign_withholding_tax] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_withholding_tax]  DEFAULT ((0)),
	[foreign_investment_funds] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_investment_funds]  DEFAULT ((0)),
	[tax_free_amount] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_tax_free_amount]  DEFAULT ((0)),
	[tax_deferred_amount] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_tax_deferred_amount]  DEFAULT ((0)),
	[return_of_capital] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_return_of_capital]  DEFAULT ((0)),
	[domestic_total_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_total_cgt]  DEFAULT ((0)),
	[domestic_discounted_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_discounted_cgt]  DEFAULT ((0)),
	[domestic_indexation_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_indexation_cgt]  DEFAULT ((0)),
	[domestic_concessional_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_concessional_cgt]  DEFAULT ((0)),
	[domestic_other_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_other_cgt]  DEFAULT ((0)),
	[foreign_total_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_total_cgt]  DEFAULT ((0)),
	[foreign_discounted_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_discounted_cgt]  DEFAULT ((0)),
	[foreign_indexation_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_indexation_cgt]  DEFAULT ((0)),
	[foreign_concessional_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_concessional_cgt]  DEFAULT ((0)),
	[foreign_other_cgt] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_other_cgt]  DEFAULT ((0)),
	[domestic_imputation_credit] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_domestic_imputation_credit]  DEFAULT ((0)),
	[foreign_tax_credit] [money] NOT NULL CONSTRAINT [DF_investor_income_transactions_foreign_tax_credit]  DEFAULT ((0)),
 CONSTRAINT [PK_investor_income_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_option]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action_option](
	[corporate_action_id] [uniqueidentifier] NOT NULL,
	[option_no] [int] NOT NULL CONSTRAINT [DF_corporate_action_option_option_no]  DEFAULT ((1)),
	[option_name] [nvarchar](100) NOT NULL,
	[is_default] [bit] NOT NULL CONSTRAINT [DF_corporate_action_option_is_default]  DEFAULT ((0)),
 CONSTRAINT [PK_corporate_action_option] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC,
	[option_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_price_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_price_history](
	[investment_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[unit_price] [decimal](19,8) NOT NULL,
	[access_level] [smallint] NOT NULL,
	[adjusted_price] [decimal](19,8) NOT NULL CONSTRAINT [DF_investment_price_history_adjusted_price]  DEFAULT ((0)),
	[interest_rate] [float] NULL,
	[income] decimal(19, 8) NULL,
	[total_return_override] decimal(19, 8) NULL,
	[dilution_factor] decimal(19, 8) NULL,
	dilution_factor_applied bit NULL,
	new_investment_code nvarchar(20) NULL,
	income_corporate_action_id nvarchar(50) NULL,
	code_change_corporate_action_id nvarchar(50) NULL,
	comment nvarchar(100) NULL,
 CONSTRAINT [PK_investment_price_history] PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[investment_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_overrides]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_overrides](
	[investment_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[investment_name] [nvarchar](100) NULL,
	[unit_price] [decimal](19,8) NULL,
	[mer] [real] NULL,
	[income_rate] [real] NULL,
	[growth_rate] [real] NULL,
	[unit_size] [real] NULL,
	[franking] [real] NULL,
	[recommendation] [smallint] NULL,
	[buy_price] [money] NULL,
	[sell_price] [money] NULL,
	[isin_code] [nvarchar](12) NULL,
	[domain_approved] [bit] NULL CONSTRAINT [DF_investment_overrides_domain_approved]  DEFAULT ((1)),
	[correlation_group] [nvarchar](20) NULL,
	[buy_priority] [smallint] NULL,
	[dps] [money] NULL,
	[target_price] [money] NULL,
	[description] [ntext] NULL,
	[preferred] [bit] NULL,
	[date_edited] [datetime] NULL,
	[status] [smallint] NULL,
	[min_security_balance] [money] NULL,
	[min_traded_lot_size] [money] NULL,
	[ignore_min_security_balance] [bit] NULL,
	[ignore_min_traded_lot_size] [bit] NULL,
	[investment_term] [int] NULL,
	[maturity_date] [datetime] NULL,
	[current_credit_rating] [nvarchar](10) NULL,
	[initial_credit_rating] [nvarchar](10) NULL,
	[reset_rate] [float](53) NULL,
	[coupons_per_year] [int] NULL,
	[last_coupon_date] [datetime] NULL,
	[call_date] [datetime] NULL,
	[interest_type] [smallint] NULL,
	[order_pad_expiry_date] [datetime] NULL,
	[expiry_price] [money] NULL,
	[exercise_type] smallint NULL,
	[shares_per_contract] [float](53) NULL,
	[underlying_investment_id] [uniqueidentifier] NULL,
 	[face_value] [money] NULL,
	[issue_date] [datetime] NULL,
	[trading_margin] [float] NULL,
	[max_traded_lot_size] [money] NULL,
	[price_as_at_date] [datetime] NULL,
	[external_investment_type] [nvarchar](50) NULL,
	[accrue_interest] bit  NULL 
CONSTRAINT [PK_investment_overrides] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_issuers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_issuers]
	(
	issuer_id uniqueidentifier NOT NULL,
	access_level smallint NOT NULL,
	owner_id nvarchar(50) NOT NULL,
	owner_user_id nvarchar(101) NOT NULL,
	issuer_code1 nvarchar(30) NOT NULL,
	issuer_code2 nvarchar(30) NULL,
	issuer_name nvarchar(100) NOT NULL,
	current_credit_rating nvarchar(50) NULL,
	bsb_number nvarchar(50) NULL,
	account_number nvarchar(20) NULL,
	account_name nvarchar(50) NULL,
	austraclear_number nvarchar(20) NULL,
	austraclear_name nvarchar(50) NULL
	)  ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_folder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client_folder](
	[client_folder_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_client_folder_client_folder_id]  DEFAULT (newid()),
	[client_folder_name] [nvarchar](50) NOT NULL,
	[advisor_id] [nvarchar](101) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[external_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_client_folder] PRIMARY KEY CLUSTERED 
(
	[client_folder_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor](
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
	[distribute_excess_to_cash] [smallint] NOT NULL CONSTRAINT [DF_investor_distribute_excess_to_cash]  DEFAULT ((20)),
	[tax_lot_selection] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_lot_selection]  DEFAULT ((0)),
	[default_compliance_template_id] [uniqueidentifier] NULL,
	[brokerage_rate] [real] NOT NULL CONSTRAINT [DF_investor_brokerage_rate]  DEFAULT ((0)),
	[other_income] [money] NOT NULL CONSTRAINT [DF_investor_other_income]  DEFAULT ((0)),
	[tax_payers] [smallint] NOT NULL CONSTRAINT [DF_investor_tax_payers]  DEFAULT ((1)),
	[account_type] [smallint] NOT NULL CONSTRAINT [DF_investor_account_type]  DEFAULT ((0)),
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_investor_created_date]  DEFAULT (getutcdate()),
	[closed_date] [datetime] NULL,
	[contact_id] [uniqueidentifier] NULL,
	[mda_operator_id] [nvarchar](50) NULL,
	[status] [smallint] NOT NULL CONSTRAINT [DF_investor_status]  DEFAULT ((0)),
	[commision_rate] [real] NOT NULL CONSTRAINT [DF_investor_commision_rate]  DEFAULT ((0.01)),
	[participate_in_reconciliation] [bit] NOT NULL CONSTRAINT [DF_investor_participate_in_reconciliation]  DEFAULT ((1)),
	[base_fee] [money] NOT NULL CONSTRAINT [DF_investor_base_fee]  DEFAULT ((0)),
	[performance_fee] [money] NOT NULL CONSTRAINT [DF_investor_performance_fee]  DEFAULT ((0)),
	[highwater_mark] [money] NOT NULL CONSTRAINT [DF_investor_highwater_mark]  DEFAULT ((0)),
	[last_bill_run_date] [datetime] NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[advisor_id] [nvarchar](101) NOT NULL,
	[enable_auto_rebalance] [bit] NOT NULL CONSTRAINT [DF_investor_enable_auto_rebalance]  DEFAULT ((0)),
	[auto_rebalance_period] [smallint] NOT NULL CONSTRAINT [DF_investor_auto_rebalance_period]  DEFAULT ((6)),
	[auto_rebalance_units] [smallint] NOT NULL CONSTRAINT [DF_investor_auto_rebalance_units]  DEFAULT ((3)),
	[auto_rebalance_next_date] [datetime] NULL,
	[enable_correlation] [bit] NOT NULL CONSTRAINT [DF_investor_enable_correlation]  DEFAULT ((0)),
	[min_cgt_months] [int] NOT NULL CONSTRAINT [DF_investor_min_cgt_months]  DEFAULT ((0)),
	[max_cgt_months] [int] NOT NULL CONSTRAINT [DF_investor_max_cgt_months]  DEFAULT ((12)),
	[capital_gain_percentage] [float] NOT NULL CONSTRAINT [DF_investor_capital_gain_percentage]  DEFAULT ((0)),
	[minimum_holding_weeks] [int] NOT NULL CONSTRAINT [DF_investor_minimum_holding_weeks]  DEFAULT ((0)),
	[maximum_holdings_amount] [decimal](18, 0) NOT NULL CONSTRAINT [DF_investor_maximum_holdings_amount]  DEFAULT ((0)),
	[alert_billing_level] [int] NOT NULL CONSTRAINT [DF_investor_alert_billing_level]  DEFAULT ((0)),
	[enable_rebalancing] [bit] NOT NULL CONSTRAINT [DF_investor_enable_rebalancing]  DEFAULT ((1)),
	[orders_pending] [bit] NOT NULL CONSTRAINT [DF_investor_orders_pending]  DEFAULT ((0)),
	[model_alignment] [real] NULL,
	[compliance_status] [smallint] NULL,
	[last_alignment] [datetime] NULL,
	[is_linked] [bit] NOT NULL CONSTRAINT [DF_investor_is_linked]  DEFAULT ((0)),
	[base_currency_code] nchar(3) NOT NULL,
	[model_drift_alignment] [smallint] NULL
 CONSTRAINT [PK_investor] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[investor]') AND name = N'IX_investor')
CREATE NONCLUSTERED INDEX [IX_Investor] ON [dbo].[investor] 
(
	[investor_name] ASC,
	[client_folder_id] ASC
)
INCLUDE ( [investor_id],
[status],
[domain_id],
[advisor_id]) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.investor_meta_data
	(
	investor_id uniqueidentifier NOT NULL,
	domain_id nvarchar(50) NOT NULL,
	advisor_id nvarchar(101) NOT NULL,
	access_level smallint NOT NULL,
	data_context nvarchar(20) NOT NULL,
	data_object xml NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
ALTER TABLE dbo.investor_meta_data ADD CONSTRAINT
	PK_investor_meta_data PRIMARY KEY CLUSTERED 
	(
	investor_id,
	data_context
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action](
	[corporate_action_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_corporate_action_corporate_action_id]  DEFAULT (newid()),
	[external_corporate_action_id] [nvarchar](40) NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[corporate_action_type] [smallint] NOT NULL,
	[action_required_type] [smallint] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[ex_date] [datetime] NOT NULL,
	[record_date] [datetime] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[pdf_url] [nvarchar](255) NULL,
	[original_corporate_action_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_corporate_action] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action', N'COLUMN',N'action_required_type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any action required (i.e. Mandatory, Mandatory with options, voluntary)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action', @level2type=N'COLUMN',@level2name=N'action_required_type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action', N'COLUMN',N'original_corporate_action_id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this corporate action has been overriden at the domain level, then this is a pointer to the original system corporate action' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action', @level2type=N'COLUMN',@level2name=N'original_corporate_action_id'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_statistics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domain_statistics](
	[domain_id] [nvarchar](50) NOT NULL,
	[as_at_date] [datetime] NOT NULL,
	[open_investor_count] [int] NOT NULL,
	[closed_investor_count] [int] NOT NULL,
	[open_investor_fum] [money] NOT NULL,
	[closed_investor_fum] [money] NOT NULL,
	[model_portfolio_count] [int] NOT NULL,
	[investment_count] [int] NOT NULL,
	[compliance_template_count] [int] NOT NULL,
	[last_holdings_upload_date] [datetime] NOT NULL,
	[rebalanced_portfolio_count] [int] NOT NULL,
	[order_traunch_count] [int] NOT NULL,
	[user_count] [int] NOT NULL,
	[users_logged_in] [int] NOT NULL,
	[published_file_count] [int] NOT NULL,
	[published_file_total_size] [bigint] NOT NULL,
	[checksum] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_domain_statistics] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[as_at_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[manager_mandate](
	[mandate_guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_manager_mandate_mandate_guid]  DEFAULT (newid()),
	[mandate_name] [nvarchar](100) NOT NULL CONSTRAINT [DF_manager_mandate_mandate_name]  DEFAULT (N'New Mandate'),
	[category_class_id] [uniqueidentifier] NULL,
	[date_created] [datetime] NOT NULL,
	[date_edited] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[description] [nvarchar](511) NULL,
	[is_hidden] [bit] NOT NULL CONSTRAINT [DF_manager_mandate_is_hidden]  DEFAULT ((0)),
	[is_pick_list] [bit] NOT NULL CONSTRAINT [DF_manager_mandate_is_pick_list]  DEFAULT ((0)),
	[fee] [money] NULL,
	[status] bit NOT NULL CONSTRAINT DF_manager_mandate_status DEFAULT 0,
 CONSTRAINT [PK_manager_mandate] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manager_mandate_fees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[manager_mandate_fees](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[as_at_date] [datetime] NOT NULL,
	[from_fum] [money] NOT NULL,
	[fee_to_apply] [money] NOT NULL,
	[date_edited] [datetime] NOT NULL,
	[user_id_edited] [nvarchar](101) NOT NULL
) ON [PRIMARY]

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_class]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category_class](
	[category_class_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_category_class_category_class_id]  DEFAULT (newid()),
	[category_class_name] [nvarchar](100) NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[external_id] [nvarchar](50) NULL,
	[category_class_number] [smallint] NOT NULL CONSTRAINT [DF_category_class_category_class_number] DEFAULT 0,
 CONSTRAINT [PK_category_class] PRIMARY KEY CLUSTERED 
(
	[category_class_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_class_override]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category_class_override](
	[category_class_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[category_class_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_category_class_override] PRIMARY KEY CLUSTERED 
(
	[category_class_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_upload_permissions](
	[domain_id] [nvarchar](50) NOT NULL,
	[investment_upload_id] [int] NOT NULL,
	[investment_upload_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_investment_upload_permissions] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[investment_upload_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contact](
	[contact_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](5) NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[work_phone] [nvarchar](20) NULL,
	[home_phone] [nvarchar](20) NULL,
	[mobile_phone] [nvarchar](20) NULL,
	[fax] [nvarchar](20) NULL,
	[home_address] [uniqueidentifier] NULL,
	[postal_address] [uniqueidentifier] NULL,
	[comments] [ntext] NULL,
	[domain_id] [nvarchar](50) NOT NULL CONSTRAINT [DF_contact_domain_id]  DEFAULT (''),
	[owner_user_id] [nvarchar](101) NULL,
	[company_name] [nvarchar](50) NULL,
	[job_title] [nvarchar](50) NULL,
	[external_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_permissions](
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[permissions] [smallint] NOT NULL CONSTRAINT [DF_model_portfolio_permissions_state]  DEFAULT ((0)),
 CONSTRAINT [PK_model_portfolio_permissions] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domain_sharing_permissions](
	[domain_id] [nvarchar](50) NOT NULL,
	[foreign_domain_id] [nvarchar](50) NOT NULL,
	[model_portfolio_permissions] [smallint] NOT NULL CONSTRAINT [DF_domain_sharing_permissions_permissions]  DEFAULT ((0)),
	[order_implementation_permissions] [smallint] NOT NULL CONSTRAINT [DF_domain_sharing_permissions_order_implementation_permissions]  DEFAULT ((0)),
 CONSTRAINT [PK_domain_sharing_permissions] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[foreign_domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_attribute]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entity_attribute](
	[attribute_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[attribute_type] [smallint] NOT NULL,
	[attribute_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_attribute] PRIMARY KEY CLUSTERED 
(
	[attribute_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mda_operator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mda_operator](
	[domain_id] [nvarchar](50) NOT NULL,
	[mda_operator_domain_id] [nvarchar](50) NOT NULL,
	[is_visible] [bit] NOT NULL CONSTRAINT [DF_mda_operator_is_visible]  DEFAULT ((1)),
 CONSTRAINT [PK_mda_operator] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[mda_operator_domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio](
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
	[fee_percentage] [real] NOT NULL DEFAULT ((0)),
	[compliance_template_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_model_portfolio] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wrap_platform_permissions](
	[domain_id] [nvarchar](50) NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[permission] [int] NULL,
	[reconcile_holdings] [bit] NULL,
	[data_lag] [int] NULL,
	[data_feed_configuration] [int] NULL,
 CONSTRAINT [PK_wrap_platform_permissions] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[wrap_platform_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_user](
	[user_id] [nvarchar](101) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nchar](100) NULL,
	[user_settings] [ntext] NULL,
	[contact_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_web_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_template]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[compliance_template](
	[compliance_template_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[compliance_template_name] [nvarchar](100) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_available] [datetime] NULL,
	[date_edited] [datetime] NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[min_buy_hold_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_min_buy_hold_allocation]  DEFAULT ((0)),
	[max_high_risk_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_max_high_risk_allocation]  DEFAULT ((1)),
	[max_speculative_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_max_speculative_allocation]  DEFAULT ((1)),
	[max_investment_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_max_investment_allocation]  DEFAULT ((1)),
	[warn_if_sell_rated] [bit] NOT NULL CONSTRAINT [DF_compliance_template_warn_if_sell_rated]  DEFAULT ((0)),
	[min_number_investments] [int] NOT NULL CONSTRAINT [DF_compliance_template_min_number_investments]  DEFAULT ((0)),
	[max_number_investments] [int] NOT NULL CONSTRAINT [DF_compliance_template_max_number_investments]  DEFAULT ((0)),
	[min_investment_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_min_investment_allocation]  DEFAULT ((0)),
	[min_cash_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_min_cash_allocation]  DEFAULT ((0)),
	[max_cash_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_template_max_cash_allocation]  DEFAULT ((0)),
	[min_alloc_of_approved_investments] [real] NOT NULL CONSTRAINT [DF_compliance_template_min_alloc_of_approved_investments] DEFAULT ((1)),
 CONSTRAINT [PK_compliance_template] PRIMARY KEY CLUSTERED 
(
	[compliance_template_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_folder_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client_folder_permissions](
	[client_folder_id] [uniqueidentifier] NOT NULL,
	[authorized_user] [nvarchar](101) NOT NULL,
	[access_level] [smallint] NOT NULL,
 CONSTRAINT [PK_client_folder_permissions] PRIMARY KEY CLUSTERED 
(
	[client_folder_id] ASC,
	[authorized_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_category_path_exclusions](
	[investor_id] [uniqueidentifier] NOT NULL,
	[category_path] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_investor_category_path_exclusions] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_user_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_user_permissions](
	[investor_id] [uniqueidentifier] NOT NULL,
	[web_user_id] [nvarchar](101) NOT NULL,
	[permissions] [int] NOT NULL,
 CONSTRAINT [PK_investor_user_permissions] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[web_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_contact_relations](
	[investor_id] [uniqueidentifier] NOT NULL,
	[contact_id] [uniqueidentifier] NOT NULL,
	[relationship_type] [uniqueidentifier] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by_user_id] [nvarchar](101) NOT NULL,
	[view_investor] [bit] NOT NULL,
	[email_cc] [bit] NOT NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_investor_contact_relations] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[contact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_exclusions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_exclusions](
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[comment] [nvarchar](255) NULL,
	[reserved_units] [float] NULL,
	[reserved_units_type] [smallint] NULL,
	[exclusion_type] [smallint] NOT NULL CONSTRAINT [DF_investment_exclusions_exclusion_type]  DEFAULT ((0)),
	[substitute_investment_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_investment_exclusions] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[investment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_transfer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_transfer](
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[hin_srn] [nvarchar](10) NOT NULL,
	[broker_pid] [nvarchar](10) NULL,
	[sponsorship_type] [smallint] NOT NULL,
	[broker_name] [nvarchar](50) NULL,
	[quantity] [float] NOT NULL,
	[amount] [money] NOT NULL,
	[signatory1] [nvarchar](100) NULL,
	[signatory2] [nvarchar](100) NULL,
	[signatory3] [nvarchar](100) NULL,
	[reserved_units] [float] NOT NULL CONSTRAINT [DF_investment_transfer_reserved_units]  DEFAULT ((0)),
 CONSTRAINT [PK_investment_transfer] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[investment_id] ASC,
	[hin_srn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_platform]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_platform](
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[client_id] [nvarchar](50) NOT NULL,
	[last_upload] [datetime] NULL,
	[buy_priority] [int] NOT NULL CONSTRAINT [DF_investor_platform_buy_priority]  DEFAULT ((0)),
	[sell_priority] [int] NOT NULL CONSTRAINT [DF_investor_platform_sell_priority]  DEFAULT ((0)),
	[import_holdings] [bit] NOT NULL CONSTRAINT [DF_investor_platform_import_holdings]  DEFAULT ((1)),
	[reconciliation_wrap_platform_id] [int] NULL,
	[reconciliation_wrap_platform_client_id] [nvarchar](50) NULL,
	[linked_wrap_platform_id] [int] NULL,
	[linked_wrap_platform_client_id] [nvarchar](50) NULL,
	[client_id2] [nvarchar](50) NULL,
	[platform_type] [int] NULL,
	cash_value [money] NULL,
	investment_value [money] NULL,
	cash_value_changed [bit] NOT NULL CONSTRAINT DF_investor_platform_cash_value_changed DEFAULT 1,
	investment_value_changed [bit] NOT NULL CONSTRAINT DF_investor_platform_investment_value_changed DEFAULT 1,
 CONSTRAINT [PK_investor_platform] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[wrap_platform_id] ASC,
	[client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_node_overrides](
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[node_id] [int] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL CONSTRAINT [DF_model_portfolio_node_overrides_allocation]  DEFAULT ((0)),
 CONSTRAINT [PK_model_portfolio_node_overrides] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC,
	[node_id] ASC,
	[investor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_attributes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_attributes](
	[investor_id] [uniqueidentifier] NOT NULL,
	[attribute_id] [int] NOT NULL,
 CONSTRAINT [PK_investor_attributes] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[attribute_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_model_portfolio](
	[investor_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL CONSTRAINT [DF_investor_model_portfolio_allocation]  DEFAULT ((0)),
	[priority] [int] NOT NULL CONSTRAINT [DF_investor_model_portfolio_priority]  DEFAULT ((0)),
 CONSTRAINT [PK_investor_model_portfolio] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[model_portfolio_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_schedule_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_schedule_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[update_user_id] [nvarchar](101) NOT NULL,
	[fee_schedule_id] [uniqueidentifier] NOT NULL,
	[parent_id] [uniqueidentifier] NOT NULL,
	[root_schedule_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[access_level] [smallint] NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_fee_schedule_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_item_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_item_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[update_user_id] [nvarchar](101) NOT NULL,
	[fee_item_id] [uniqueidentifier] NOT NULL,
	[applies_from] [datetime] NOT NULL,
	[bps] [real] NULL,
	[can_override] [bit] NOT NULL,
	[fee_group_id] [uniqueidentifier] NOT NULL,
	[fee_schedule_id] [uniqueidentifier] NOT NULL,
	[fixed] [money] NULL,
	[logical_item_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[paid_to] [nvarchar](100) NOT NULL,
	[tax_code_id] [nvarchar](20) NULL,
	[categories] [nvarchar](100) NULL,
	[bps_max_override] [real] NULL,
	[fixed_max_override] [money] NULL,
	[fee_cap] [money] NULL,
 CONSTRAINT [PK_fee_item_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_codes]') AND type in (N'U'))
BEGIN
CREATE TABLE dbo.tax_codes
	(
	tax_code_id nvarchar(20) NOT NULL,
	tax_code_name nvarchar(50) NOT NULL,
	tax_amount real NOT NULL,
CONSTRAINT
	PK_tax_codes PRIMARY KEY CLUSTERED 
	(
	tax_code_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

	) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_group_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_group_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[update_user_id] [nvarchar](101) NOT NULL,
	[fee_group_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[sort_order] [bit] NOT NULL,
	[root_schedule_id] [uniqueidentifier] NOT NULL,
	[can_add_items] [bit] NOT NULL,
 CONSTRAINT [PK_fee_group_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_changelog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_changelog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](200) NOT NULL,
	[date] [datetime] NOT NULL,
	[details] [xml] NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
	[schedule_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_fee_changelog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_queue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_queue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](200) NOT NULL,
	[date] [datetime] NOT NULL,
	[details] [xml] NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
	[schedule_id] [uniqueidentifier] NOT NULL,
	[applies_from] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_default_domain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_default_domain](
	[domain_id] [nvarchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[schedule_id] [uniqueidentifier] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_default_advisor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_default_advisor](
	[advisor_id] [nvarchar](101) NOT NULL,
	[date] [datetime] NOT NULL,
	[schedule_id] [uniqueidentifier] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_default_investor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_default_investor](
	[investor_id] [uniqueidentifier] NOT NULL,
	[date] [datetime] NOT NULL,
	[schedule_id] [uniqueidentifier] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action_income_event](
	[corporate_action_id] [uniqueidentifier] NOT NULL,
	[option_no] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[payable_date] [datetime] NOT NULL,
	[current_dividend_amount] [money] NOT NULL,
	[dividend_type] [smallint] NOT NULL,
	[special_indicator] [bit] NOT NULL,
	[drp_indicator] [bit] NOT NULL,
	[bsp_indicator] [bit] NOT NULL,
	[foreign_dividend_amount] [money] NOT NULL,
	[dividend_currency] [nvarchar](3) NOT NULL,
	[withholding_tax_rate] [real] NOT NULL,
	[foreign_tax_credits_per_share] [money] NOT NULL,
	[tax_deferred_amount] [money] NOT NULL,
	[foreign_currency_amount] [money] NOT NULL,
	[franked_amount] [money] NOT NULL,
	[unfranked_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_unfranked_amount]  DEFAULT ((0)),
	[interest_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_interest_amount]  DEFAULT ((0)),
	[rental_income_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_rental_income_amount]  DEFAULT ((0)),
	[tax_credit_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_tax_credit_amount]  DEFAULT ((0)),
	[tax_free_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_tax_free_amount]  DEFAULT ((0)),
	[discounted_gain_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_discounted_gain_amount]  DEFAULT ((0)),
	[tax_credit_discounted_gain_amount] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_tax_credit_discounted_gain_amount]  DEFAULT ((0)),
	[concessional_gain] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_concessional_gain]  DEFAULT ((0)),
	[non_distributed_concessional_gain] [money] NOT NULL CONSTRAINT [DF_corporate_action_income_event_non_distributed_concessional_gain]  DEFAULT ((0)),
	[scrip_dividend_amount] [money] NOT NULL,
	[special_dividend_amount] [money] NOT NULL,
	[last_election_date] [datetime] NOT NULL,
	[despatch_date] [datetime] NOT NULL,
	[child_investment_id] [uniqueidentifier] NOT NULL,
	[pari_passu_indicator] [bit] NOT NULL,
	[drp_discount_rate] [real] NULL,
	[drp_calculation_start_date] [datetime] NULL,
	[drp_calculation_end_date] [datetime] NULL,
	[drp_maximum_shares] [int] NULL,
	[drp_maximum_amount] [money] NULL,
	[drp_minimum_shares] [int] NULL,
	[drp_minimum_amount] [money] NULL,
	[drp_price] [money] NOT NULL,
 CONSTRAINT [PK_corporate_action_income_event] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC,
	[option_no] ASC,
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'dividend_type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of dividend (i.e. final, interim, quarterly)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'dividend_type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'special_indicator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If true then some or all of the dividend has been declared as special' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'special_indicator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_indicator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the company offers a DRP and under what conditions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_indicator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'bsp_indicator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the company offers a bonus share plan and under what conditions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'bsp_indicator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'foreign_dividend_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the amount of dividend paid from a foreign source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'foreign_dividend_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'dividend_currency'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The currency the dividend is paid in' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'dividend_currency'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'withholding_tax_rate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage tax rate applicable to non-residents (i.e. for foreign dividends paid to
The percentage tax rate applicable to non-residents (i.e. for foreign dividends paid to Australian shareholders)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'withholding_tax_rate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'foreign_tax_credits_per_share'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount of the dividend for which foreign tax has been paid up, generating a tax credit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'foreign_tax_credits_per_share'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'tax_deferred_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dollar amount of the dividend for which tax can be delayed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'tax_deferred_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'foreign_currency_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount of a dividend payment declared in the foreign currency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'foreign_currency_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'franked_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount of a dividend payment that is franked' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'franked_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'scrip_dividend_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cash value of the most recently announced dividend (or part thereof) declared and payable as share scrip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'scrip_dividend_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'special_dividend_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of the current dividend that has been declared as ‘special’.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'special_dividend_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'last_election_date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date that DRP qualifying shareholders are able to elect to participate in the DRP.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'last_election_date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'despatch_date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date upon which the issuing company will allot DRP securities' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'despatch_date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'child_investment_id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The investment ID of the new shares that will be issued as part of the DRP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'child_investment_id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'pari_passu_indicator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether deferred delivery securities rank equally with ordinary shares for the next dividend' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'pari_passu_indicator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_discount_rate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage discount applied to the weighted average DRP issue price calculated as
The percentage discount applied to the weighted average DRP issue price calculated as part of the DRP.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_discount_rate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_calculation_start_date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the DRP issue price calculation occurs.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_calculation_start_date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_calculation_end_date'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the DRP issue price calculation concludes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_calculation_end_date'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_maximum_shares'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The issuer nominated maximum number of shares for which a single shareholder is able to participate in the DRP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_maximum_shares'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_maximum_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The dollar value maximum limit on DRP elections for a single shareholder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_maximum_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_minimum_shares'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The dollar value minimum limit on DRP elections for a single shareholder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_minimum_shares'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_minimum_amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The issuer nominated minimum number of shares for which a single shareholder is able to
The issuer nominated minimum number of shares for which a single shareholder is able to participate in the DRP.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_minimum_amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_income_event', N'COLUMN',N'drp_price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The price set for DRP share issue.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_income_event', @level2type=N'COLUMN',@level2name=N'drp_price'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action_capital_event](
	[corporate_action_id] [uniqueidentifier] NOT NULL,
	[option_no] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[child_investment_id] [uniqueidentifier] NOT NULL,
	[calculation_method] [smallint] NOT NULL,
	[terms_multiplier] [money] NOT NULL,
	[terms_divisor] [int] NOT NULL,
	[fractional_rounding] [smallint] NOT NULL,
	[entitlement_multiples] [int] NOT NULL,
	[pari_passu_indicator] [bit] NOT NULL,
	[parent_cost_base_adjustment_ratio] [real] NOT NULL,
	[child_cost_base] [money] NOT NULL,
	[charges] [money] NOT NULL,
 CONSTRAINT [PK_corporate_action_capital_event] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC,
	[option_no] ASC,
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'child_investment_id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The investment id that is issued as part of this event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'child_investment_id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'calculation_method'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating which method of calculation is to be adopted in determining the entitlement.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'calculation_method'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'terms_multiplier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The multiplier used in determining the entitlement.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'terms_multiplier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'terms_divisor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The divisor used in determining the entitlement.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'terms_divisor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'fractional_rounding'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating how the entitlement should be rounded for calculations involving fractions and multiples.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'fractional_rounding'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'entitlement_multiples'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entitlements to these new shares may only be available in certain specified multiples. The remainder, depending on Company policy, to be rounded up or down (refer fractions rounding).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'entitlement_multiples'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'pari_passu_indicator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether deferred delivery securities rank equally with ordinary shares for the next dividend' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'pari_passu_indicator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'parent_cost_base_adjustment_ratio'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the adjustment that needs to made to a parents cost base and reduced cost base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'parent_cost_base_adjustment_ratio'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'child_cost_base'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cost base per unit  of the child investment (i.e. the investment that is being issued)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'child_cost_base'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'corporate_action_capital_event', N'COLUMN',N'charges'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any other fees and charges associated with the corporate action' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'corporate_action_capital_event', @level2type=N'COLUMN',@level2name=N'charges'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_code_change_event]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action_code_change_event](
	[corporate_action_id] [uniqueidentifier] NOT NULL,
	[option_no] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[old_code] [nvarchar](10) NOT NULL,
	[old_name] [nvarchar](100) NOT NULL,
	[new_code] [nvarchar](10) NOT NULL,
	[new_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_corporate_action_code_change_event] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC,
	[option_no] ASC,
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_metrics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[compliance_metrics](
	[compliance_regime_id] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
	[min_value] [real] NOT NULL CONSTRAINT [DF_compliance_metrics_min_value]  DEFAULT ((0)),
	[max_value] [real] NOT NULL CONSTRAINT [DF_compliance_metrics_max_value]  DEFAULT ((1)),
	[min_investment_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_metrics_min_investment_allocation]  DEFAULT ((1)),
	[max_investment_allocation] [real] NOT NULL CONSTRAINT [DF_compliance_metrics_max_investment_allocation]  DEFAULT ((0)),
	[comment] [nvarchar](511) NULL,
	[warning_alert_threshold] [decimal](18, 3) NOT NULL,
 CONSTRAINT [PK_compliance_metrics] PRIMARY KEY CLUSTERED 
(
	[compliance_regime_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[compliance_regime_categories](
	[compliance_regime_id] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_compliance_regime_categories] PRIMARY KEY CLUSTERED 
(
	[compliance_regime_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[market]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[market](
	[market_code] [nvarchar](10) NOT NULL,
	[market_name] [nvarchar](100) NOT NULL,
	[currency_code] [nchar](3) NOT NULL,
 CONSTRAINT [PK_market] PRIMARY KEY CLUSTERED 
(
	[market_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment](
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
	[franking] [real] NOT NULL CONSTRAINT [DF_investment_franking]  DEFAULT ((0)),
	[recommendation] [smallint] NULL,
	[buy_price] [money] NULL,
	[sell_price] [money] NULL,
	[isin_code] [nvarchar](12) NULL,
	[correlation_group] [nvarchar](20) NULL,
	[buy_priority] [smallint] NOT NULL CONSTRAINT [DF_investment_buy_priority]  DEFAULT ((1)),
	[dps] [money] NOT NULL CONSTRAINT [DF_investment_dps]  DEFAULT ((0)),
	[target_price] [money] NOT NULL CONSTRAINT [DF_investment_target_price]  DEFAULT ((0)),
	[description] [ntext] NULL,
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_investment_date_created]  DEFAULT ('2007-12-01'),
	[date_edited] [datetime] NOT NULL CONSTRAINT [DF_investment_date_edited]  DEFAULT ('2007-12-01'),
	[status] [smallint] NOT NULL CONSTRAINT [DF_investment_status]  DEFAULT ((0)),
	[min_security_balance] [money] NOT NULL CONSTRAINT [DF_investment_min_security_balance]  DEFAULT ((0)),
	[min_traded_lot_size] [money] NOT NULL CONSTRAINT [DF_investment_min_traded_lot_size]  DEFAULT ((0)),
	[ignore_min_security_balance] [bit] NOT NULL CONSTRAINT [DF_investment_ignore_min_security_balance]  DEFAULT ((0)),
	[ignore_min_traded_lot_size] [bit] NOT NULL CONSTRAINT [DF_investment_ignore_min_traded_lot_size]  DEFAULT ((0)),
	[issuer_id] [uniqueidentifier] NULL,
	[investment_term] [int] NULL,
	[maturity_date] [datetime] NULL,
	[current_credit_rating] [nvarchar](10) NULL,
	[initial_credit_rating] [nvarchar](10) NULL,
	[reset_rate] [float](53) NULL,
	[coupons_per_year] [int] NULL,
	[last_coupon_date] [datetime] NULL,
	[call_date] [datetime] NULL,
	[interest_type] [smallint] NULL,
	[order_pad_expiry_date] [datetime] NULL,
	[expiry_price] [money] NULL,
	[exercise_type] smallint NULL,
	[shares_per_contract] [float](53) NULL,
	[underlying_investment_id] [uniqueidentifier] NULL,
 	[face_value] [money] NULL,
	[issue_date] [datetime] NULL,
	[trading_margin] [float] null,
	[max_traded_lot_size] [money] NULL,
	[fx_currency_code] nchar(3) NULL,
	[price_as_at_date] datetime null,
	[external_investment_type] nvarchar(50) null,
	[accrue_interest] bit  NOT NULL DEFAULT(0)
CONSTRAINT [PK_investment] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[investment]') AND name = N'IX_investment')
CREATE NONCLUSTERED INDEX [IX_investment] ON [dbo].[investment] 
(
	[investment_code] ASC,
	[owner_id] ASC,
	[access_level] ASC
)
INCLUDE ( [investment_id],
[investment_name],
[market_code],
[currency_code],
[investment_type],
[owner_user_id]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

DECLARE @v sql_variant 
SET @v = N'Only relevant for FX securities where this is the currency code of the currency this investments currency should be converted to.'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'investment', N'COLUMN', N'fx_currency_code'
GO
ALTER TABLE dbo.investment ADD CONSTRAINT
	FK_investment_currency1 FOREIGN KEY
	(
	fx_currency_code
	) REFERENCES dbo.currency
	(
	currency_code
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_user_group_users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_user_group_users](
	[group_id] [int] NOT NULL,
	[web_user_id] [nvarchar](101) NOT NULL,
 CONSTRAINT [PK_web_user_group_users] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC,
	[web_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[reconciliation_registry_systems](
	[reconciliation_process_id] [uniqueidentifier] NOT NULL,
	[registry_wrap_platform_id] [int] NOT NULL,
	[data_uploaded] [bit] NOT NULL CONSTRAINT [DF_reconciliation_registry_systems_data_uploaded]  DEFAULT ((0)),
 CONSTRAINT [PK_reconciliation_registry_systems] PRIMARY KEY CLUSTERED 
(
	[reconciliation_process_id] ASC,
	[registry_wrap_platform_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_process]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[reconciliation_process](
	[reconciliation_process_id] [uniqueidentifier] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[status] [smallint] NOT NULL,
	[owner_id] [nvarchar](50) NOT NULL,
	[owner_user_id] [nvarchar](101) NOT NULL,
	[accounting_wrap_platform_id] [int] NULL,
 CONSTRAINT [PK_reconciliation_process] PRIMARY KEY CLUSTERED 
(
	[reconciliation_process_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[corporate_action_event]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[corporate_action_event](
	[corporate_action_id] [uniqueidentifier] NOT NULL,
	[option_no] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[event_type] [smallint] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_corporate_action_event] PRIMARY KEY CLUSTERED 
(
	[corporate_action_id] ASC,
	[option_no] ASC,
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_categories](
	[investment_id] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_investment_categories] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category](
	[category_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_category_category_id]  DEFAULT (newid()),
	[category_name] [nvarchar](100) NOT NULL,
	[category_code] [nvarchar](20) NOT NULL,
	[category_class_id] [uniqueidentifier] NOT NULL,
	[is_default] [bit] NOT NULL,
	[sector_weighting] [real] NOT NULL CONSTRAINT [DF_category_sector_weighting]  DEFAULT ((0)),
	[index_investment_id] [uniqueidentifier] NULL,
	[owner_id] [nvarchar](50) NULL,
	[is_hidden] [bit] NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_override]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category_override](
	[category_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[category_name] [nvarchar](100) NULL,
	[sector_weighting] [real] NULL,
	[index_investment_id] [uniqueidentifier] NULL,
	[is_hidden] [bit] NULL,
 CONSTRAINT [PK_category_override] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_category_map]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_category_map](
	[investment_id] [uniqueidentifier] NOT NULL,
	[category1] [uniqueidentifier] NULL,
	[category2] [uniqueidentifier] NULL,
	[category3] [uniqueidentifier] NULL,
	[category4] [uniqueidentifier] NULL,
	[category5] [uniqueidentifier] NULL,
	[category6] [uniqueidentifier] NULL,
	[category7] [uniqueidentifier] NULL,
	[category8] [uniqueidentifier] NULL,
	[category9] [uniqueidentifier] NULL,
	[category10] [uniqueidentifier] NULL,
 CONSTRAINT [PK_investment_category_map] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_category_map_override]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_category_map_override](
	[investment_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[category1] [uniqueidentifier] NULL,
	[category2] [uniqueidentifier] NULL,
	[category3] [uniqueidentifier] NULL,
	[category4] [uniqueidentifier] NULL,
	[category5] [uniqueidentifier] NULL,
	[category6] [uniqueidentifier] NULL,
	[category7] [uniqueidentifier] NULL,
	[category8] [uniqueidentifier] NULL,
	[category9] [uniqueidentifier] NULL,
	[category10] [uniqueidentifier] NULL,
 CONSTRAINT [PK_investment_category_map_override] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_domain_permissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_domain_permissions](
	[investment_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[allowed_access] [bit] NOT NULL,
 CONSTRAINT [PK_investment_domain_permissions] PRIMARY KEY CLUSTERED 
(
	[investment_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_fum_log]') AND type in (N'U'))
BEGIN
CREATE TABLE dbo.investor_fum_log
	(
	fee_row_id uniqueidentifier NOT NULL,
	investor_id uniqueidentifier NOT NULL,
	wrap_platform_id int NOT NULL,
	wrap_platform_client_id nvarchar(50) NOT NULL,
	as_at_date datetime NOT NULL,
	fum money NOT NULL
	)  ON [PRIMARY]
END
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_tax_lots](
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
	[wrap_platform_id] [int] NOT NULL,
	[account_name] [nvarchar](100) NULL,
	[is_tax_exempt] [bit] NOT NULL CONSTRAINT [DF_investor_tax_lots_is_tax_exempt]  DEFAULT ((0)),
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,	
	[reservation_comment] [nvarchar](255) NULL,
	[wrap_platform_reserved_units] [float] NULL,
	[external_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_investor_tax_lots] PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC,
	[investment_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC,
	[parcel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]') AND name = N'IX_investor_tax_lots_wp_wpc_investment_id_investor_extid')
CREATE NONCLUSTERED INDEX [IX_investor_tax_lots_wp_wpc_investment_id_investor_extid] ON [dbo].[investor_tax_lots] 
(
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC,
	[investment_id] ASC,
	[investor_id] ASC,
	[external_id] ASC
)
INCLUDE ( [parcel_id],
[units],
[account_name]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investor_transactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investor_transactions](
	[transaction_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_investor_transactions_transaction_id]  DEFAULT (newid()),
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
	[external_transaction_id] [nvarchar](50) NOT NULL,
	[sequence_number] [int] NOT NULL CONSTRAINT [DF_investor_transactions_sequence_number]  DEFAULT ((0)),
	[transaction_type] [smallint] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[amount] [money] NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[settlement_date] [datetime] NOT NULL,
	[status] [smallint] NOT NULL,
	[entered_date] [datetime] NOT NULL CONSTRAINT [DF_investor_transactions_entered_date]  DEFAULT (getutcdate()),
	[linked_transaction_id] [uniqueidentifier] NULL,
	[comment] [nvarchar](255) NULL,
	[attributes] [int] NOT NULL CONSTRAINT [DF_investor_transactions_attributes]  DEFAULT ((0)),
	[reversed] [bit] NOT NULL CONSTRAINT [DF_investor_transactions_reversed]  DEFAULT ((0)),
	[corporate_action_id] [uniqueidentifier] NULL,
	[user_id] [nvarchar](101) NOT NULL,
	[confirmed] [bit] NOT NULL CONSTRAINT [DF_investor_transactions_commited]  DEFAULT ((0)),
	[tax_date] [datetime] NOT NULL,
	[exchange_rate]  decimal(19,8) NOT NULL DEFAULT(1),
	[report_date]  datetime NULL 
 CONSTRAINT [PK_investor_transactions] PRIMARY KEY NONCLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tax_lot_upload_log](
	[tax_lot_log_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[investment_id] [uniqueidentifier] NULL,
	[parcel_id] [int] NULL,
	[account_name] [nvarchar](100) NULL,
	[action_type] [smallint] NOT NULL,
	[error_msg] [nvarchar](200) NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tax_lot_upload_log] PRIMARY KEY CLUSTERED 
(
	[tax_lot_log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_node_mandate_allocations](
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[model_portfolio_node_id] [int] NOT NULL,
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
	[priority] [int] NOT NULL,
 CONSTRAINT [PK_model_portfolio_node_mandate_allocations] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC,
	[model_portfolio_node_id] ASC,
	[mandate_guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]') AND name = N'IX_model_portfolio_node_mandate_allocations')
CREATE UNIQUE NONCLUSTERED INDEX [IX_model_portfolio_node_mandate_allocations] ON [dbo].[model_portfolio_node_mandate_allocations] 
(
	[model_portfolio_id] ASC,
	[mandate_guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[investment_allocation_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[investment_allocation_history](
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[version] [int] NOT NULL,
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
 CONSTRAINT [PK_investment_allocation_history] PRIMARY KEY CLUSTERED 
(
	[mandate_guid] ASC,
	[version] ASC,
	[investment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact_notes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contact_notes](
	[note_id] [uniqueidentifier] NOT NULL,
	[contact_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NULL,
	[note_date] [datetime] NOT NULL,
	[subject] [nvarchar](255) NOT NULL,
	[note_text] [ntext] NOT NULL,
	[author_id] [nvarchar](101) NOT NULL,
	[note_type_id] [int] NULL,
 CONSTRAINT [PK_contact_notes] PRIMARY KEY CLUSTERED 
(
	[note_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_attributes](
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[attribute_id] [int] NOT NULL,
 CONSTRAINT [PK_model_portfolio_attributes] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC,
	[attribute_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_report]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[reconciliation_report](
	[reconciliation_process_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
	[registry_units] [float] NOT NULL,
	[accounting_units] [float] NOT NULL,
	[reconciliation_action] [smallint] NOT NULL,
	[reserved_units] [float] NOT NULL CONSTRAINT [DF_reconciliation_report_reserved_units]  DEFAULT ((0)),
	[reserved_unit_type] [smallint] NOT NULL CONSTRAINT [DF_reconciliation_report_reserved_unit_type]  DEFAULT ((1)),
 CONSTRAINT [PK_reconciliation_report] PRIMARY KEY CLUSTERED 
(
	[reconciliation_process_id] ASC,
	[investor_id] ASC,
	[investment_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[reconciliation_tax_lots](
	[reconciliation_process_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50) NOT NULL,
	[parcel_id] [int] NOT NULL,
	[purchase_date] [datetime] NOT NULL,
	[purchase_price] [money] NOT NULL,
	[cost_base] [money] NOT NULL,
	[units] [float] NOT NULL,
	[account_name] [nvarchar](100) NULL,
	[reserved_units] [float] NOT NULL,
	[reserved_units_type] [smallint] NOT NULL,
	[rebalance_units] [float] NOT NULL,
	[rebalance_unit_type] [smallint] NOT NULL,
 CONSTRAINT [PK_reconciliation_tax_lots] PRIMARY KEY CLUSTERED 
(
	[reconciliation_process_id] ASC,
	[investor_id] ASC,
	[investment_id] ASC,
	[wrap_platform_id] ASC,
	[wrap_platform_client_id] ASC,
	[parcel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[compliance_template_node]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[compliance_template_node](
	[node_id] [int] NOT NULL,
	[compliance_template_id] [uniqueidentifier] NOT NULL,
	[parent_node_id] [int] NULL,
	[category_id] [uniqueidentifier] NULL,
	[category_class_id] [uniqueidentifier] NULL,
	[compliance_regime_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_compliance_template_node] PRIMARY KEY CLUSTERED 
(
	[node_id] ASC,
	[compliance_template_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocation_override]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[model_portfolio_node_mandate_allocation_override](
	[model_portfolio_id] [uniqueidentifier] NOT NULL,
	[mandate_guid] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[allocation] [real] NOT NULL,
 CONSTRAINT [PK_model_portfolio_node_mandate_allocation_override] PRIMARY KEY CLUSTERED 
(
	[model_portfolio_id] ASC,
	[mandate_guid] ASC,
	[investor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO
CREATE TABLE dbo.investor_orders
	(
	order_id uniqueidentifier NOT NULL,
	investor_id uniqueidentifier NOT NULL,
	wrap_platform_id int NOT NULL,
	wrap_platform_client_id nvarchar(50) NOT NULL,
	sequence_number int NOT NULL,
	transaction_type smallint NOT NULL,
	investment_id uniqueidentifier NOT NULL,
	amount money NULL,
	quantity float NULL,
	confirmed_amount money NULL,
	confirmed_units float NULL,
	event smallint NOT NULL,
	status smallint NOT NULL,
	initial_entered_date datetime NOT NULL DEFAULT(getutcdate()),
	entered_date datetime NOT NULL,
	user_id nvarchar(101) NOT NULL,
	linked_transaction_id nvarchar(50) NULL,
	external_order_id nvarchar(50) NULL,
	comment nvarchar(255) NULL,
	-- Cash prefixed columns only set for BUY orders.
	cash_platform_id int NULL,
	cash_platform_client_id nvarchar(50) NULL,
	cash_investment_id uniqueidentifier NULL,
	cash_account_name nvarchar(100) NULL,
	is_wip_updated [bit] NOT NULL,
	bulk_order_id uniqueidentifier NULL,
	trade_date datetime NULL,
	settlement_date datetime NULL,
	charges money NULL,
	gst money NULL,
	brokerage money NULL
	
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.investor_orders ADD CONSTRAINT
	PK_investor_orders PRIMARY KEY CLUSTERED 
	(
	order_id,
	sequence_number
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO
ALTER TABLE dbo.investor_orders ADD CONSTRAINT
	FK_investor_orders_investor FOREIGN KEY
	(
	investor_id
	) REFERENCES dbo.investor
	(
	investor_id
	) ON UPDATE CASCADE
	 ON DELETE CASCADE
GO
ALTER TABLE dbo.investor_orders WITH NOCHECK ADD CONSTRAINT
	FK_investor_orders_investor_platform FOREIGN KEY
	(
	investor_id,
	wrap_platform_id,
	wrap_platform_client_id
	) REFERENCES dbo.investor_platform
	(
	investor_id,
	wrap_platform_id,
	client_id
	) ON UPDATE NO ACTION 
	 ON DELETE NO ACTION 
GO
ALTER TABLE dbo.investor_orders ADD CONSTRAINT
	FK_investor_orders_investment FOREIGN KEY
	(
	investment_id
	) REFERENCES dbo.investment
	(
	investment_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
GO 	
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fee_changelog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fee_changelog](
	[id] [int] NOT NULL,
	[type] [nvarchar](200) NOT NULL,
	[date] [datetime] NOT NULL,
	[details] [xml] NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
	[schedule_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_fee_changelog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_in_progress](
	[order_id] [uniqueidentifier] NOT NULL,
	[investor_id] [uniqueidentifier] NOT NULL,
	[investment_id] [uniqueidentifier] NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[wrap_platform_client_id] [nvarchar](50)  NOT NULL,
	[tax_parcel_id] [int] IDENTITY(-1000,-1) NOT NULL,
	[cash_amount] [money] NULL,
	[holdings_units] [float] NULL,
	[rebalance_value_cash] [money] NULL,
	[rebalance_unit_holdings] [float] NULL,
	[cash_investment_id] [uniqueidentifier] NULL,
	[update_user] [nvarchar](101)  NOT NULL,
	[update_datetime] [datetime] NOT NULL,
	[order_status] [smallint] NOT NULL,
	[current_order_amount] money  NULL,
	[current_order_units] float  NULL 	
 CONSTRAINT [PK_work_in_progress] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_in_progress_policies](
	[wip_policy_Id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
	[wrap_platform_id] [int] NOT NULL,
	[transaction_type] [smallint] NOT NULL,
	[investment_type] [smallint] NOT NULL,
	[order_status] [smallint] NOT NULL,
	[cash_amount] [smallint] NOT NULL,
	[holdings_units] [smallint] NOT NULL,
	[rebalance_value_cash] [smallint] NOT NULL,
	[rebalance_unit_holdings] [smallint] NOT NULL,
 CONSTRAINT [PK_work_in_progress_policies] PRIMARY KEY CLUSTERED 
(
	[wip_policy_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO 

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.investor_order_exports
	(
	export_id int NOT NULL,
	export_name nvarchar(50) NOT NULL,
	export_type nvarchar(100) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.investor_order_exports ADD CONSTRAINT
	PK_investor_order_exports PRIMARY KEY CLUSTERED 
	(
	export_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.investor_order_export_permissions
	(
	export_id int NOT NULL,
	domain_id nvarchar(50) NOT NULL,
	export_name nvarchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.investor_order_export_permissions ADD CONSTRAINT
	PK_investor_order_export_permissions PRIMARY KEY CLUSTERED 
	(
	export_id,
	domain_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.investor_order_export_permissions ADD CONSTRAINT
	FK_investor_order_export_permissions_investor_order_exports FOREIGN KEY
	(
	export_id
	) REFERENCES dbo.investor_order_exports
	(
	export_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO

/****** Object:  Table [dbo].[widget]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[widget](
	[widget_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[icon] [nvarchar](255) NOT NULL,
	[order_no] [int] NOT NULL,
	[is_locked] [bit] NOT NULL,
	[is_default] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[version_no] [int] NOT NULL,
	[last_update] [datetime] NOT NULL,
	[widget_type] [nvarchar](200) NOT NULL,
	[accessible_to_all_domains] [bit] NOT NULL,
	[accessible_to_all_roles] [bit] NOT NULL,
	[is_hidden][bit] NOT NULL,
 CONSTRAINT [PK_Widget] PRIMARY KEY CLUSTERED 
(
	[widget_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[widget_domain_permission]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_domain_permission](
	[widget_id] [uniqueidentifier] NOT NULL,
	[domain_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_widget_domain_permission_1] PRIMARY KEY CLUSTERED 
(
	[widget_id] ASC,
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_dashboard_page]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_dashboard_page](
	[widget_dashboard_page_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[user_id] [nvarchar](101) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[version_no] [int] NOT NULL,
	[column_count] [int] NOT NULL,
	[is_locked] [bit] NOT NULL,
	[order_no] [int] NOT NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[widget_dashboard_page_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_dashboard_column]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_dashboard_column](
	[widget_dashboard_column_id] [uniqueidentifier] NOT NULL,
	[widget_dashboard_page_id] [uniqueidentifier] NOT NULL,
	[column_no] [int] NOT NULL,
	[column_width] [int] NOT NULL,
	[last_updated] [datetime] NOT NULL,
 CONSTRAINT [PK_Column] PRIMARY KEY CLUSTERED 
(
	[widget_dashboard_column_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_role_permission]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_role_permission](
	[widget_id] [uniqueidentifier] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_widget_role_permission_1] PRIMARY KEY CLUSTERED 
(
	[widget_id] ASC,
	[role_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_default_user_setting]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_default_user_setting](
	[widget_default_user_setting_id] [uniqueidentifier] NOT NULL,
	[widget_id] [uniqueidentifier] NOT NULL,
	[key_name] [nvarchar](50) NOT NULL,
	[value] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_default_WidgetInstanceUserSetting] PRIMARY KEY CLUSTERED 
(
	[widget_default_user_setting_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_instance]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_instance](
	[widget_instance_id] [uniqueidentifier] NOT NULL,
	[widget_dashboard_column_id] [uniqueidentifier] NOT NULL,
	[widget_id] [uniqueidentifier] NOT NULL,
	[order_no] [int] NOT NULL,
	[expanded] [bit] NOT NULL,
	[maximized] [bit] NOT NULL,
	[resized] [bit] NOT NULL,
	[width] [int] NOT NULL,
	[height] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[version_no] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_update] [datetime] NOT NULL,
 CONSTRAINT [PK_WidgetInstance] PRIMARY KEY CLUSTERED 
(
	[widget_instance_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[widget_instance_user_setting]    Script Date: 02/01/2012 09:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[widget_instance_user_setting](
	[widget_instance_id] [uniqueidentifier] NOT NULL,
	[key_name] [nvarchar](50) NOT NULL,
	[value] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_widget_instance_user_setting] PRIMARY KEY CLUSTERED 
(
	[widget_instance_id] ASC,
	[key_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Default [DF_Widget_OrderNo]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget] ADD  CONSTRAINT [DF_Widget_OrderNo]  DEFAULT ((1)) FOR [order_no]
GO
/****** Object:  Default [DF_Widget_IsLocked]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget] ADD  CONSTRAINT [DF_Widget_IsLocked]  DEFAULT ((0)) FOR [is_locked]
GO
/****** Object:  Default [DF_Widget_IsDefault]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget] ADD  CONSTRAINT [DF_Widget_IsDefault]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF_Widget_WidgetType]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget] ADD  CONSTRAINT [DF_Widget_WidgetType]  DEFAULT ((0)) FOR [widget_type]
GO
/****** Object:  Default [DF_Page_CreatedDate]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_dashboard_page] ADD  CONSTRAINT [DF_Page_CreatedDate]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  Default [DF_Page_VersionNo]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_dashboard_page] ADD  CONSTRAINT [DF_Page_VersionNo]  DEFAULT ((1)) FOR [version_no]
GO
/****** Object:  Default [DF_Page_ColumnCount]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_dashboard_page] ADD  CONSTRAINT [DF_Page_ColumnCount]  DEFAULT ((3)) FOR [column_count]
GO
/****** Object:  Default [DF_Page_IsLocked]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_dashboard_page] ADD  CONSTRAINT [DF_Page_IsLocked]  DEFAULT ((0)) FOR [is_locked]
GO
/****** Object:  Default [DF_WidgetInstance_Maximized]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance] ADD  CONSTRAINT [DF_WidgetInstance_Maximized]  DEFAULT ((0)) FOR [maximized]
GO
/****** Object:  Default [DF_WidgetInstance_Resized]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance] ADD  CONSTRAINT [DF_WidgetInstance_Resized]  DEFAULT ((0)) FOR [resized]
GO
/****** Object:  Default [DF_WidgetInstance_Width]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance] ADD  CONSTRAINT [DF_WidgetInstance_Width]  DEFAULT ((0)) FOR [width]
GO
/****** Object:  Default [DF_WidgetInstance_Height]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance] ADD  CONSTRAINT [DF_WidgetInstance_Height]  DEFAULT ((0)) FOR [height]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[insert_cash_investment]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[insert_cash_investment] ON [dbo].[currency] 
FOR INSERT 
AS
INSERT INTO investment (investment_name, investment_code, currency_code, unit_price, investment_type, access_level, owner_id,unit_size)
select inserted.currency_code + '' CASH'', ''CASH'', inserted.currency_code, 1, 1, 0, 
(SELECT domain_id FROM domain WHERE is_system_domain = 1),0.001 FROM inserted

INSERT INTO investment (investment_id, investment_name, investment_code, currency_code, 
unit_price, investment_type, access_level, owner_id,unit_size,fx_currency_code)
SELECT newid(), 
c.currency_name + ''-'' + c2.currency_name + '' Exchange Rate'',
''FX-'' + c.currency_code+c2.currency_code, 
c.currency_code, 
1,
19, 
0,
(SELECT domain_id FROM domain WHERE is_system_domain = 1),
0.01,
c2.currency_code FROM currency c, currency c2
WHERE c.currency_code <> c2.currency_code
AND NOT EXISTS 
(SELECT * FROM investment WHERE 
currency_code = c.currency_code AND 
fx_currency_code = c2.currency_code AND 
investment_type = 19)
'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[add_rebalance_security]'))
EXEC dbo.sp_executesql @statement = N'CREATE   TRIGGER [dbo].[add_rebalance_security] ON [dbo].[currency] 
FOR INSERT, UPDATE
AS
DECLARE @defaultCurrency nvarchar(10);
SELECT @defaultCurrency = currency_code FROM currency WHERE is_default = 1;
IF (@defaultCurrency IS null)
	RETURN;
--check to see whether the rebalancing security exists yet. If it does
--and the currency code differs to @defaultCurrency, then raise an error.
DECLARE @rCashCurr nvarchar(10);
SELECT @rCashCurr = currency_code FROM investment WHERE investment_code = ''UV_CASH'' AND investment_type = 1;
IF @rCashCurr IS NOT NULL
BEGIN
	IF @rCashCurr <> @defaultCurrency
	BEGIN
		RAISERROR (''Cannot change default currency if the default rebalance cash investment still exists'', 16, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
	ELSE
		RETURN;
END
DECLARE @systemDomain nvarchar(50)
SELECT @systemDomain = domain_id FROM domain WHERE is_system_domain = 1
IF @systemDomain IS NULL
BEGIN
	RAISERROR(''No default domain'', 16,1);
	ROLLBACK TRANSACTION;
	RETURN;
END
--otherwise we need to add investment
INSERT INTO investment (investment_name, investment_code, currency_code, unit_price, investment_type, access_level, owner_id, unit_size)
VALUES (''UNALLOCATED VALUE'', ''UV_CASH'', @defaultCurrency, 1, 1, 0, @systemDomain, 0.001);
'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[DeleteInvestments]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[DeleteInvestments] ON [dbo].[domain] 
FOR DELETE 
AS
DELETE FROM investment WHERE 
(access_level = 1 OR access_level = 2)
AND owner_id IN (SELECT domain_id FROM deleted)
'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[OnDeleteContact]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[OnDeleteContact] ON [dbo].[contact] 
FOR DELETE
AS
SET  NOCOUNT ON
--Deletes any address that were being used by the contact
DELETE FROM address WHERE address_id IN (SELECT home_address FROM deleted) OR address_id IN (SELECT postal_address FROM deleted)
SET  NOCOUNT OFF
'
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact]  WITH NOCHECK ADD  CONSTRAINT [CK_contact] CHECK  (([last_name] IS NOT NULL AND len([last_name])<>(0) OR [first_name] IS NOT NULL AND len([first_name])<>(0)))
GO
ALTER TABLE [dbo].[contact] CHECK CONSTRAINT [CK_contact]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_compliance_metrics]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics]  WITH NOCHECK ADD  CONSTRAINT [CK_compliance_metrics] CHECK  (([min_value]<=[max_value]))
GO
ALTER TABLE [dbo].[compliance_metrics] CHECK CONSTRAINT [CK_compliance_metrics]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_recommendation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_recommendation] CHECK  ((([recommendation]<>(5) OR [recommendation] IS NULL) AND [buy_price] IS NULL AND [sell_price] IS NULL OR [recommendation]=(5) AND [buy_price] IS NOT NULL AND [sell_price] IS NOT NULL AND [buy_price]<=[sell_price] AND [buy_price]>=(0)))
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [CK_investment_recommendation]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_unit_size]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_unit_size] CHECK  (([unit_size]>(0)))
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [CK_investment_unit_size]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_allocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_allocation] CHECK  ((([recommendation]<>(5) AND [buy_price] IS NULL AND [sell_price] IS NULL AND [dynamic_rating_option] IS NULL OR [recommendation]=(5) AND [buy_price] IS NOT NULL AND [sell_price] IS NOT NULL AND [buy_price]<=[sell_price] AND [buy_price]>=(0) AND ([dynamic_rating_option]=(1) OR [dynamic_rating_option]=(0)) OR [recommendation]=(6) AND ([dynamic_rating_option]=(1) OR [dynamic_rating_option]=(0))) AND ([max_increment] IS NULL OR [max_increment]>=(0))))
GO
ALTER TABLE [dbo].[investment_allocation] CHECK CONSTRAINT [CK_investment_allocation]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_overrides_recommendation]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_overrides_recommendation] CHECK  ((([recommendation]<>(5) OR [recommendation] IS NULL) AND [buy_price] IS NULL AND [sell_price] IS NULL OR [recommendation]=(5) AND [buy_price] IS NOT NULL AND [sell_price] IS NOT NULL AND [buy_price]<=[sell_price] AND [buy_price]>=(0)))
GO
ALTER TABLE [dbo].[investment_overrides] CHECK CONSTRAINT [CK_investment_overrides_recommendation]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_overrides_unit_size]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_overrides_unit_size] CHECK  (([unit_size] IS NULL OR [unit_size]>(0)))
GO
ALTER TABLE [dbo].[investment_overrides] CHECK CONSTRAINT [CK_investment_overrides_unit_size]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investment_transfer]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer]  WITH NOCHECK ADD  CONSTRAINT [CK_investment_transfer] CHECK  (([reserved_units]<=[quantity]))
GO
ALTER TABLE [dbo].[investment_transfer] CHECK CONSTRAINT [CK_investment_transfer]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [CK_investor] CHECK  (([tax_bracket_id]>=(0) AND ([cgt_preferences]=(3) OR [cgt_preferences]=(2) OR ([cgt_preferences]=(1) OR [cgt_preferences]=(0))) AND ([legal_structure]=(6) OR ([legal_structure]=(5) OR ([legal_structure]=(4) OR ([legal_structure]=(3) OR ([legal_structure]=(2) OR ([legal_structure]=(1) OR [legal_structure]=(0))))))) AND [min_security_balance]>=(0) AND [min_traded_lot_size]>=(0) AND ([sell_unmanaged_investments]=(2) OR ([sell_unmanaged_investments]=(1) OR [sell_unmanaged_investments]=(0))) AND ([tax_lot_selection]=(3) OR ([tax_lot_selection]=(2) OR ([tax_lot_selection]=(1) OR [tax_lot_selection]=(0)))) AND [brokerage_rate]>=(0) AND [tax_payers]>(0) AND ([account_type]=(1) OR [account_type]=(0)) AND ([status]=(4) OR ([status]=(3) OR ([status]=(2) OR ([status]=(1) OR [status]=(0))))) AND [commision_rate]>=(0)))
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [CK_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[category]'))
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_category_class] FOREIGN KEY([category_class_id])
REFERENCES [dbo].[category_class] ([category_class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_category_class]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[category]'))
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_investment] FOREIGN KEY([index_investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_allocation_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_allocation]'))
ALTER TABLE [dbo].[category_allocation]  WITH CHECK ADD  CONSTRAINT [FK_category_allocation_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[category_allocation] CHECK CONSTRAINT [FK_category_allocation_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_allocation_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_allocation]'))
ALTER TABLE [dbo].[category_allocation]  WITH CHECK ADD  CONSTRAINT [FK_category_allocation_manager_mandate] FOREIGN KEY([mandate_guid])
REFERENCES [dbo].[manager_mandate] ([mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_fees_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_fees]'))
ALTER TABLE dbo.manager_mandate_fees WITH NOCHECK ADD CONSTRAINT
	FK_manager_mandate_fees_manager_mandates FOREIGN KEY
	(
	mandate_guid
	) REFERENCES dbo.manager_mandate
	(
	mandate_guid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
GO
ALTER TABLE dbo.manager_mandate_fees
	NOCHECK CONSTRAINT FK_manager_mandate_fees_manager_mandates
GO
ALTER TABLE [dbo].[category_allocation] CHECK CONSTRAINT [FK_category_allocation_manager_mandate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_category_class_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[category_class]'))
ALTER TABLE [dbo].[category_class]  WITH NOCHECK ADD  CONSTRAINT [FK_category_class_domain] FOREIGN KEY([owner_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category_class] CHECK CONSTRAINT [FK_category_class_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_folder_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[client_folder]'))
ALTER TABLE [dbo].[client_folder]  WITH NOCHECK ADD  CONSTRAINT [FK_client_folder_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[client_folder] CHECK CONSTRAINT [FK_client_folder_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_folder_permissions_client_folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[client_folder_permissions]'))
ALTER TABLE [dbo].[client_folder_permissions]  WITH CHECK ADD  CONSTRAINT [FK_client_folder_permissions_client_folder] FOREIGN KEY([client_folder_id])
REFERENCES [dbo].[client_folder] ([client_folder_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[client_folder_permissions] CHECK CONSTRAINT [FK_client_folder_permissions_client_folder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_metrics_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics]  WITH CHECK ADD  CONSTRAINT [FK_compliance_metrics_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[compliance_metrics] CHECK CONSTRAINT [FK_compliance_metrics_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_metrics_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_metrics]'))
ALTER TABLE [dbo].[compliance_metrics]  WITH CHECK ADD  CONSTRAINT [FK_compliance_metrics_compliance_regime] FOREIGN KEY([compliance_regime_id])
REFERENCES [dbo].[compliance_regime] ([compliance_regime_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[compliance_metrics] CHECK CONSTRAINT [FK_compliance_metrics_compliance_regime]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_regime_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]'))
ALTER TABLE [dbo].[compliance_regime_categories]  WITH CHECK ADD  CONSTRAINT [FK_compliance_regime_categories_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[compliance_regime_categories] CHECK CONSTRAINT [FK_compliance_regime_categories_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_regime_categories_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_regime_categories]'))
ALTER TABLE [dbo].[compliance_regime_categories]  WITH CHECK ADD  CONSTRAINT [FK_compliance_regime_categories_compliance_regime] FOREIGN KEY([compliance_regime_id])
REFERENCES [dbo].[compliance_regime] ([compliance_regime_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[compliance_regime_categories] CHECK CONSTRAINT [FK_compliance_regime_categories_compliance_regime]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template]'))
ALTER TABLE [dbo].[compliance_template]  WITH CHECK ADD  CONSTRAINT [FK_compliance_template_domain] FOREIGN KEY([owner_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[compliance_template] CHECK CONSTRAINT [FK_compliance_template_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_node_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template_node]'))
ALTER TABLE [dbo].[compliance_template_node]  WITH CHECK ADD  CONSTRAINT [FK_compliance_template_node_compliance_template] FOREIGN KEY([compliance_template_id])
REFERENCES [dbo].[compliance_template] ([compliance_template_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[compliance_template_node] CHECK CONSTRAINT [FK_compliance_template_node_compliance_template]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_compliance_template_node_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[compliance_template_node]'))
ALTER TABLE [dbo].[compliance_template_node]  WITH CHECK ADD  CONSTRAINT [FK_compliance_template_node_compliance_regime] FOREIGN KEY([compliance_regime_id])
REFERENCES [dbo].[compliance_regime] ([compliance_regime_id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[compliance_template_node] CHECK CONSTRAINT [FK_compliance_template_node_compliance_regime]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_address]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact]  WITH CHECK ADD  CONSTRAINT [FK_contact_address] FOREIGN KEY([home_address])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[contact] CHECK CONSTRAINT [FK_contact_address]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_address1]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact]  WITH CHECK ADD  CONSTRAINT [FK_contact_address1] FOREIGN KEY([postal_address])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[contact] CHECK CONSTRAINT [FK_contact_address1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact]'))
ALTER TABLE [dbo].[contact]  WITH NOCHECK ADD  CONSTRAINT [FK_contact_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[contact] CHECK CONSTRAINT [FK_contact_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contact_notes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[contact_notes]'))
ALTER TABLE [dbo].[contact_notes]  WITH CHECK ADD  CONSTRAINT [FK_contact_notes_entity_attribute] FOREIGN KEY([note_type_id])
REFERENCES [dbo].[entity_attribute] ([attribute_id])
GO
ALTER TABLE [dbo].[contact_notes] CHECK CONSTRAINT [FK_contact_notes_entity_attribute]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action]'))
ALTER TABLE [dbo].[corporate_action]  WITH NOCHECK ADD  CONSTRAINT [FK_corporate_action_domain] FOREIGN KEY([owner_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action] CHECK CONSTRAINT [FK_corporate_action_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action]'))
ALTER TABLE [dbo].[corporate_action]  WITH CHECK ADD  CONSTRAINT [FK_corporate_action_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[corporate_action] CHECK CONSTRAINT [FK_corporate_action_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_capital_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]'))
ALTER TABLE [dbo].[corporate_action_capital_event]  WITH NOCHECK ADD  CONSTRAINT [FK_corporate_action_capital_event_corporate_action_event] FOREIGN KEY([corporate_action_id], [option_no], [event_id])
REFERENCES [dbo].[corporate_action_event] ([corporate_action_id], [option_no], [event_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action_capital_event] CHECK CONSTRAINT [FK_corporate_action_capital_event_corporate_action_event]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_capital_event_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_capital_event]'))
ALTER TABLE [dbo].[corporate_action_capital_event]  WITH CHECK ADD  CONSTRAINT [FK_corporate_action_capital_event_investment] FOREIGN KEY([child_investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[corporate_action_capital_event] CHECK CONSTRAINT [FK_corporate_action_capital_event_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_code_change_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_code_change_event]'))
ALTER TABLE [dbo].[corporate_action_code_change_event]  WITH CHECK ADD  CONSTRAINT [FK_corporate_action_code_change_event_corporate_action_event] FOREIGN KEY([corporate_action_id], [option_no], [event_id])
REFERENCES [dbo].[corporate_action_event] ([corporate_action_id], [option_no], [event_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action_code_change_event] CHECK CONSTRAINT [FK_corporate_action_code_change_event_corporate_action_event]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_event_corporate_action_option]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_event]'))
ALTER TABLE [dbo].[corporate_action_event]  WITH CHECK ADD  CONSTRAINT [FK_corporate_action_event_corporate_action_option] FOREIGN KEY([corporate_action_id], [option_no])
REFERENCES [dbo].[corporate_action_option] ([corporate_action_id], [option_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action_event] CHECK CONSTRAINT [FK_corporate_action_event_corporate_action_option]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_income_event_corporate_action_event]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]'))
ALTER TABLE [dbo].[corporate_action_income_event]  WITH NOCHECK ADD  CONSTRAINT [FK_corporate_action_income_event_corporate_action_event] FOREIGN KEY([corporate_action_id], [option_no], [event_id])
REFERENCES [dbo].[corporate_action_event] ([corporate_action_id], [option_no], [event_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action_income_event] CHECK CONSTRAINT [FK_corporate_action_income_event_corporate_action_event]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_income_event_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_income_event]'))
ALTER TABLE [dbo].[corporate_action_income_event]  WITH NOCHECK ADD  CONSTRAINT [FK_corporate_action_income_event_investment] FOREIGN KEY([child_investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[corporate_action_income_event] CHECK CONSTRAINT [FK_corporate_action_income_event_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_corporate_action_option_corporate_action]') AND parent_object_id = OBJECT_ID(N'[dbo].[corporate_action_option]'))
ALTER TABLE [dbo].[corporate_action_option]  WITH CHECK ADD  CONSTRAINT [FK_corporate_action_option_corporate_action] FOREIGN KEY([corporate_action_id])
REFERENCES [dbo].[corporate_action] ([corporate_action_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[corporate_action_option] CHECK CONSTRAINT [FK_corporate_action_option_corporate_action]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_sharing_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]'))
ALTER TABLE [dbo].[domain_sharing_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_domain_sharing_permissions_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[domain_sharing_permissions] CHECK CONSTRAINT [FK_domain_sharing_permissions_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_sharing_permissions_domain1]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_sharing_permissions]'))
ALTER TABLE [dbo].[domain_sharing_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_domain_sharing_permissions_domain1] FOREIGN KEY([foreign_domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[domain_sharing_permissions] CHECK CONSTRAINT [FK_domain_sharing_permissions_domain1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_domain_statistics_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[domain_statistics]'))
ALTER TABLE [dbo].[domain_statistics]  WITH NOCHECK ADD  CONSTRAINT [FK_domain_statistics_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[domain_statistics] NOCHECK CONSTRAINT [FK_domain_statistics_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_attribute_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[entity_attribute]'))
ALTER TABLE [dbo].[entity_attribute]  WITH NOCHECK ADD  CONSTRAINT [FK_attribute_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[entity_attribute] CHECK CONSTRAINT [FK_attribute_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_currency] FOREIGN KEY([currency_code])
REFERENCES [dbo].[currency] ([currency_code])
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_currency]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_currency1]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_currency1] FOREIGN KEY([fx_currency_code])
REFERENCES [dbo].[currency] ([currency_code])
ON UPDATE  NO ACTION 
ON DELETE  NO ACTION 
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_currency1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_market]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment]'))
ALTER TABLE [dbo].[investment]  WITH CHECK ADD  CONSTRAINT [FK_investment_market] FOREIGN KEY([market_code])
REFERENCES [dbo].[market] ([market_code])
GO
ALTER TABLE [dbo].[investment] CHECK CONSTRAINT [FK_investment_market]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation]  WITH CHECK ADD  CONSTRAINT [FK_investment_allocation_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investment_allocation] CHECK CONSTRAINT [FK_investment_allocation_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation]'))
ALTER TABLE [dbo].[investment_allocation]  WITH CHECK ADD  CONSTRAINT [FK_investment_allocation_manager_mandate] FOREIGN KEY([mandate_guid])
REFERENCES [dbo].[manager_mandate] ([mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_allocation] CHECK CONSTRAINT [FK_investment_allocation_manager_mandate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_allocation_history_manager_mandate_versions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_allocation_history]'))
ALTER TABLE [dbo].[investment_allocation_history]  WITH CHECK ADD  CONSTRAINT [FK_investment_allocation_history_manager_mandate_versions] FOREIGN KEY([mandate_guid], [version])
REFERENCES [dbo].[manager_mandate_versions] ([mandate_guid], [version])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_allocation_history] CHECK CONSTRAINT [FK_investment_allocation_history_manager_mandate_versions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_categories]'))
ALTER TABLE [dbo].[investment_categories]  WITH CHECK ADD  CONSTRAINT [FK_investment_categories_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_categories] CHECK CONSTRAINT [FK_investment_categories_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_categories_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_categories]'))
ALTER TABLE [dbo].[investment_categories]  WITH CHECK ADD  CONSTRAINT [FK_investment_categories_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_categories] CHECK CONSTRAINT [FK_investment_categories_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_domain_permissions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_domain_permissions]'))
ALTER TABLE [dbo].[investment_domain_permissions]  WITH CHECK ADD  CONSTRAINT [FK_investment_domain_permissions_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_domain_permissions] CHECK CONSTRAINT [FK_investment_domain_permissions_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions]  WITH CHECK ADD  CONSTRAINT [FK_investment_exclusions_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_exclusions_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_exclusions_substitute_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_exclusions]'))
ALTER TABLE [dbo].[investment_exclusions]  WITH CHECK ADD  CONSTRAINT [FK_investment_exclusions_substitute_investment] FOREIGN KEY([substitute_investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investment_exclusions] CHECK CONSTRAINT [FK_investment_exclusions_substitute_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_overrides_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_overrides_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[investment_overrides] CHECK CONSTRAINT [FK_investment_overrides_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_overrides_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_overrides]'))
ALTER TABLE [dbo].[investment_overrides]  WITH CHECK ADD  CONSTRAINT [FK_investment_overrides_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_overrides] CHECK CONSTRAINT [FK_investment_overrides_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_price_history_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_price_history]'))
ALTER TABLE [dbo].[investment_price_history]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_price_history_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_price_history] CHECK CONSTRAINT [FK_investment_price_history_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_price_history_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_price_history]'))
ALTER TABLE [dbo].[investment_price_history]  WITH CHECK ADD  CONSTRAINT [FK_investment_price_history_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investment_price_history] CHECK CONSTRAINT [FK_investment_price_history_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_transfer_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer]  WITH CHECK ADD  CONSTRAINT [FK_investment_transfer_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investment_transfer] CHECK CONSTRAINT [FK_investment_transfer_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_transfer_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_transfer]'))
ALTER TABLE [dbo].[investment_transfer]  WITH NOCHECK ADD  CONSTRAINT [FK_investment_transfer_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_transfer] CHECK CONSTRAINT [FK_investment_transfer_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_upload_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]'))
ALTER TABLE [dbo].[investment_upload_permissions]  WITH CHECK ADD  CONSTRAINT [FK_investment_upload_permissions_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_upload_permissions] CHECK CONSTRAINT [FK_investment_upload_permissions_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investment_upload_permissions_investment_upload]') AND parent_object_id = OBJECT_ID(N'[dbo].[investment_upload_permissions]'))
ALTER TABLE [dbo].[investment_upload_permissions]  WITH CHECK ADD  CONSTRAINT [FK_investment_upload_permissions_investment_upload] FOREIGN KEY([investment_upload_id])
REFERENCES [dbo].[investment_upload] ([investment_upload_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investment_upload_permissions] CHECK CONSTRAINT [FK_investment_upload_permissions_investment_upload]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_client_folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_client_folder] FOREIGN KEY([client_folder_id])
REFERENCES [dbo].[client_folder] ([client_folder_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_client_folder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_compliance_template] FOREIGN KEY([default_compliance_template_id])
REFERENCES [dbo].[compliance_template] ([compliance_template_id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_compliance_template]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_contact] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contact] ([contact_id])
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_domain] FOREIGN KEY([mda_operator_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor]'))
ALTER TABLE [dbo].[investor]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_currency] FOREIGN KEY([base_currency_code])
REFERENCES [dbo].[currency] ([currency_code])
GO
ALTER TABLE [dbo].[investor] CHECK CONSTRAINT [FK_investor_currency]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_attributes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_attributes]'))
ALTER TABLE [dbo].[investor_attributes]  WITH CHECK ADD  CONSTRAINT [FK_investor_attributes_entity_attribute] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[entity_attribute] ([attribute_id])
GO
ALTER TABLE [dbo].[investor_attributes] CHECK CONSTRAINT [FK_investor_attributes_entity_attribute]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_attributes_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_attributes]'))
ALTER TABLE [dbo].[investor_attributes]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_attributes_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_attributes] CHECK CONSTRAINT [FK_investor_attributes_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_capital_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_capital_transactions]'))
ALTER TABLE [dbo].[investor_capital_transactions]  WITH CHECK ADD  CONSTRAINT [FK_investor_capital_transactions_investor_transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[investor_transactions] ([transaction_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_capital_transactions] CHECK CONSTRAINT [FK_investor_capital_transactions_investor_transactions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_cash_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_cash_transactions]'))
ALTER TABLE [dbo].[investor_cash_transactions]  WITH CHECK ADD  CONSTRAINT [FK_investor_cash_transactions_investor_transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[investor_transactions] ([transaction_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_cash_transactions] CHECK CONSTRAINT [FK_investor_cash_transactions_investor_transactions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_category_path_exclusions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_category_path_exclusions]'))
ALTER TABLE [dbo].[investor_category_path_exclusions]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_category_path_exclusions_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_category_path_exclusions] CHECK CONSTRAINT [FK_investor_category_path_exclusions_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations]  WITH CHECK ADD  CONSTRAINT [FK_investor_contact_relations_contact] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contact] ([contact_id])
GO
ALTER TABLE [dbo].[investor_contact_relations] CHECK CONSTRAINT [FK_investor_contact_relations_contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_contact_relationship_types]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations]  WITH CHECK ADD  CONSTRAINT [FK_investor_contact_relations_contact_relationship_types] FOREIGN KEY([relationship_type])
REFERENCES [dbo].[contact_relationship_types] ([contact_relationship_type_id])
GO
ALTER TABLE [dbo].[investor_contact_relations] CHECK CONSTRAINT [FK_investor_contact_relations_contact_relationship_types]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_contact_relations_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_contact_relations]'))
ALTER TABLE [dbo].[investor_contact_relations]  WITH CHECK ADD  CONSTRAINT [FK_investor_contact_relations_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_contact_relations] CHECK CONSTRAINT [FK_investor_contact_relations_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_income_transactions_investor_transactions]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_income_transactions]'))
ALTER TABLE [dbo].[investor_income_transactions]  WITH CHECK ADD  CONSTRAINT [FK_investor_income_transactions_investor_transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[investor_transactions] ([transaction_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_income_transactions] CHECK CONSTRAINT [FK_investor_income_transactions_investor_transactions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]'))
ALTER TABLE [dbo].[investor_model_portfolio]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_model_portfolio_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_model_portfolio] CHECK CONSTRAINT [FK_investor_model_portfolio_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_model_portfolio_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_model_portfolio]'))
ALTER TABLE [dbo].[investor_model_portfolio]  WITH CHECK ADD  CONSTRAINT [FK_investor_model_portfolio_model_portfolio] FOREIGN KEY([model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([model_portfolio_id])
GO
ALTER TABLE [dbo].[investor_model_portfolio] CHECK CONSTRAINT [FK_investor_model_portfolio_model_portfolio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_platform_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_platform]'))
ALTER TABLE [dbo].[investor_platform]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_platform_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE dbo.investor_platform ADD CONSTRAINT
	FK_investor_platform_wrap_platform_types FOREIGN KEY
	(
	platform_type
	) REFERENCES dbo.wrap_platform_types
	(
	type_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
GO
ALTER TABLE [dbo].[investor_platform] CHECK CONSTRAINT [FK_investor_platform_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_platform_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_platform]'))
ALTER TABLE [dbo].[investor_platform]  WITH CHECK ADD  CONSTRAINT [FK_investor_platform_wrap_platform] FOREIGN KEY([wrap_platform_id])
REFERENCES [dbo].[wrap_platform] ([wrap_platform_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_platform] CHECK CONSTRAINT [FK_investor_platform_wrap_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]'))
ALTER TABLE [dbo].[investor_tax_lots]  WITH CHECK ADD  CONSTRAINT [FK_investor_tax_lots_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investor_tax_lots] CHECK CONSTRAINT [FK_investor_tax_lots_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_tax_lots_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_tax_lots]'))
ALTER TABLE [dbo].[investor_tax_lots]  WITH CHECK ADD  CONSTRAINT [FK_investor_tax_lots_investor_platform] FOREIGN KEY([investor_id], [wrap_platform_id], [wrap_platform_client_id])
REFERENCES [dbo].[investor_platform] ([investor_id], [wrap_platform_id], [client_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_tax_lots] CHECK CONSTRAINT [FK_investor_tax_lots_investor_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_transactions_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_transactions]'))
ALTER TABLE [dbo].[investor_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_transactions_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[investor_transactions] CHECK CONSTRAINT [FK_investor_transactions_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_transactions_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_transactions]'))
ALTER TABLE [dbo].[investor_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_investor_transactions_investor_platform] FOREIGN KEY([investor_id], [wrap_platform_id], [wrap_platform_client_id])
REFERENCES [dbo].[investor_platform] ([investor_id], [wrap_platform_id], [client_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_transactions] CHECK CONSTRAINT [FK_investor_transactions_investor_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_investor_user_permissions_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[investor_user_permissions]'))
ALTER TABLE [dbo].[investor_user_permissions]  WITH CHECK ADD  CONSTRAINT [FK_investor_user_permissions_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[investor_user_permissions] CHECK CONSTRAINT [FK_investor_user_permissions_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate]'))
ALTER TABLE [dbo].[manager_mandate]  WITH CHECK ADD  CONSTRAINT [FK_manager_mandate_category_class] FOREIGN KEY([category_class_id])
REFERENCES [dbo].[category_class] ([category_class_id])
GO
ALTER TABLE [dbo].[manager_mandate] CHECK CONSTRAINT [FK_manager_mandate_category_class]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate]'))
ALTER TABLE [dbo].[manager_mandate]  WITH NOCHECK ADD  CONSTRAINT [FK_manager_mandate_domain] FOREIGN KEY([owner_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manager_mandate] CHECK CONSTRAINT [FK_manager_mandate_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_categories_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]'))
ALTER TABLE [dbo].[manager_mandate_categories]  WITH CHECK ADD  CONSTRAINT [FK_manager_mandate_categories_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[manager_mandate_categories] CHECK CONSTRAINT [FK_manager_mandate_categories_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_categories_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_categories]'))
ALTER TABLE [dbo].[manager_mandate_categories]  WITH CHECK ADD  CONSTRAINT [FK_manager_mandate_categories_manager_mandate] FOREIGN KEY([mandate_guid])
REFERENCES [dbo].[manager_mandate] ([mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manager_mandate_categories] CHECK CONSTRAINT [FK_manager_mandate_categories_manager_mandate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_manager_mandate_versions_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[manager_mandate_versions]'))
ALTER TABLE [dbo].[manager_mandate_versions]  WITH CHECK ADD  CONSTRAINT [FK_manager_mandate_versions_manager_mandate] FOREIGN KEY([mandate_guid])
REFERENCES [dbo].[manager_mandate] ([mandate_guid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manager_mandate_versions] CHECK CONSTRAINT [FK_manager_mandate_versions_manager_mandate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_market_currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[market]'))
ALTER TABLE [dbo].[market]  WITH CHECK ADD  CONSTRAINT [FK_market_currency] FOREIGN KEY([currency_code])
REFERENCES [dbo].[currency] ([currency_code])
GO
ALTER TABLE [dbo].[market] CHECK CONSTRAINT [FK_market_currency]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_mda_operator_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[mda_operator]'))
ALTER TABLE [dbo].[mda_operator]  WITH NOCHECK ADD  CONSTRAINT [FK_mda_operator_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mda_operator] CHECK CONSTRAINT [FK_mda_operator_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_mda_operator_domain1]') AND parent_object_id = OBJECT_ID(N'[dbo].[mda_operator]'))
ALTER TABLE [dbo].[mda_operator]  WITH NOCHECK ADD  CONSTRAINT [FK_mda_operator_domain1] FOREIGN KEY([mda_operator_domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[mda_operator] CHECK CONSTRAINT [FK_mda_operator_domain1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio]'))
ALTER TABLE [dbo].[model_portfolio]  WITH NOCHECK ADD  CONSTRAINT [FK_model_portfolio_domain] FOREIGN KEY([owner_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio] CHECK CONSTRAINT [FK_model_portfolio_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_compliance_template]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio]'))
ALTER TABLE [dbo].[model_portfolio]  WITH NOCHECK ADD  CONSTRAINT [FK_model_portfolio_compliance_template] FOREIGN KEY([compliance_template_id])
REFERENCES [dbo].[compliance_template] ([compliance_template_id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[model_portfolio] CHECK CONSTRAINT [FK_model_portfolio_compliance_template]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_attributes_entity_attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]'))
ALTER TABLE [dbo].[model_portfolio_attributes]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_attributes_entity_attribute] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[entity_attribute] ([attribute_id])
GO
ALTER TABLE [dbo].[model_portfolio_attributes] CHECK CONSTRAINT [FK_model_portfolio_attributes_entity_attribute]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_attributes_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_attributes]'))
ALTER TABLE [dbo].[model_portfolio_attributes]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_attributes_model_portfolio] FOREIGN KEY([model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_attributes] CHECK CONSTRAINT [FK_model_portfolio_attributes_model_portfolio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_category]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_category_class]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_category_class] FOREIGN KEY([category_class_id])
REFERENCES [dbo].[category_class] ([category_class_id])
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_category_class]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_compliance_regime]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_compliance_regime] FOREIGN KEY([compliance_regime_id])
REFERENCES [dbo].[compliance_regime] ([compliance_regime_id])
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_compliance_regime]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_manager_mandate]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_manager_mandate] FOREIGN KEY([mandate_guid])
REFERENCES [dbo].[manager_mandate] ([mandate_guid])
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_manager_mandate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node]'))
ALTER TABLE [dbo].[model_portfolio_node]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_model_portfolio] FOREIGN KEY([model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node] CHECK CONSTRAINT [FK_model_portfolio_node_model_portfolio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocation_override_model_portfolio_node_mandate_allocations]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocation_override]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocation_override]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_mandate_allocation_override_model_portfolio_node_mandate_allocations] FOREIGN KEY([model_portfolio_id], [mandate_guid])
REFERENCES [dbo].[model_portfolio_node_mandate_allocations] ([model_portfolio_id], [mandate_guid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocation_override] CHECK CONSTRAINT [FK_model_portfolio_node_mandate_allocation_override_model_portfolio_node_mandate_allocations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_mandate_allocations_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_mandate_allocations]'))
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node] FOREIGN KEY([model_portfolio_node_id], [model_portfolio_id])
REFERENCES [dbo].[model_portfolio_node] ([node_id], [model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node_mandate_allocations] CHECK CONSTRAINT [FK_model_portfolio_node_mandate_allocations_model_portfolio_node]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_overrides_investor]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]'))
ALTER TABLE [dbo].[model_portfolio_node_overrides]  WITH NOCHECK ADD  CONSTRAINT [FK_model_portfolio_node_overrides_investor] FOREIGN KEY([investor_id])
REFERENCES [dbo].[investor] ([investor_id])
GO
ALTER TABLE [dbo].[model_portfolio_node_overrides] CHECK CONSTRAINT [FK_model_portfolio_node_overrides_investor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_node_overrides_model_portfolio_node]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_node_overrides]'))
ALTER TABLE [dbo].[model_portfolio_node_overrides]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_node_overrides_model_portfolio_node] FOREIGN KEY([node_id], [model_portfolio_id])
REFERENCES [dbo].[model_portfolio_node] ([node_id], [model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_node_overrides] CHECK CONSTRAINT [FK_model_portfolio_node_overrides_model_portfolio_node]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]'))
ALTER TABLE [dbo].[model_portfolio_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_model_portfolio_permissions_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[model_portfolio_permissions] CHECK CONSTRAINT [FK_model_portfolio_permissions_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_model_portfolio_permissions_model_portfolio]') AND parent_object_id = OBJECT_ID(N'[dbo].[model_portfolio_permissions]'))
ALTER TABLE [dbo].[model_portfolio_permissions]  WITH CHECK ADD  CONSTRAINT [FK_model_portfolio_permissions_model_portfolio] FOREIGN KEY([model_portfolio_id])
REFERENCES [dbo].[model_portfolio] ([model_portfolio_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_portfolio_permissions] CHECK CONSTRAINT [FK_model_portfolio_permissions_model_portfolio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_process_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_process]'))
ALTER TABLE [dbo].[reconciliation_process]  WITH NOCHECK ADD  CONSTRAINT [FK_reconciliation_process_wrap_platform] FOREIGN KEY([accounting_wrap_platform_id])
REFERENCES [dbo].[wrap_platform] ([wrap_platform_id])
GO
ALTER TABLE [dbo].[reconciliation_process] CHECK CONSTRAINT [FK_reconciliation_process_wrap_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_registry_systems_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]'))
ALTER TABLE [dbo].[reconciliation_registry_systems]  WITH NOCHECK ADD  CONSTRAINT [FK_reconciliation_registry_systems_reconciliation_process] FOREIGN KEY([reconciliation_process_id])
REFERENCES [dbo].[reconciliation_process] ([reconciliation_process_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reconciliation_registry_systems] CHECK CONSTRAINT [FK_reconciliation_registry_systems_reconciliation_process]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_registry_systems_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_registry_systems]'))
ALTER TABLE [dbo].[reconciliation_registry_systems]  WITH NOCHECK ADD  CONSTRAINT [FK_reconciliation_registry_systems_wrap_platform] FOREIGN KEY([registry_wrap_platform_id])
REFERENCES [dbo].[wrap_platform] ([wrap_platform_id])
GO
ALTER TABLE [dbo].[reconciliation_registry_systems] CHECK CONSTRAINT [FK_reconciliation_registry_systems_wrap_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_report_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_report]'))
ALTER TABLE [dbo].[reconciliation_report]  WITH CHECK ADD  CONSTRAINT [FK_reconciliation_report_reconciliation_process] FOREIGN KEY([reconciliation_process_id])
REFERENCES [dbo].[reconciliation_process] ([reconciliation_process_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reconciliation_report] CHECK CONSTRAINT [FK_reconciliation_report_reconciliation_process]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_tax_lots_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]'))
ALTER TABLE [dbo].[reconciliation_tax_lots]  WITH CHECK ADD  CONSTRAINT [FK_reconciliation_tax_lots_investor_platform] FOREIGN KEY([investor_id], [wrap_platform_id], [wrap_platform_client_id])
REFERENCES [dbo].[investor_platform] ([investor_id], [wrap_platform_id], [client_id])
GO
ALTER TABLE [dbo].[reconciliation_tax_lots] CHECK CONSTRAINT [FK_reconciliation_tax_lots_investor_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_reconciliation_tax_lots_reconciliation_process]') AND parent_object_id = OBJECT_ID(N'[dbo].[reconciliation_tax_lots]'))
ALTER TABLE [dbo].[reconciliation_tax_lots]  WITH NOCHECK ADD  CONSTRAINT [FK_reconciliation_tax_lots_reconciliation_process] FOREIGN KEY([reconciliation_process_id])
REFERENCES [dbo].[reconciliation_process] ([reconciliation_process_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reconciliation_tax_lots] CHECK CONSTRAINT [FK_reconciliation_tax_lots_reconciliation_process]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tax_lot_upload_log_investment]') AND parent_object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]'))
ALTER TABLE [dbo].[tax_lot_upload_log]  WITH CHECK ADD  CONSTRAINT [FK_tax_lot_upload_log_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[tax_lot_upload_log] CHECK CONSTRAINT [FK_tax_lot_upload_log_investment]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tax_lot_upload_log_investor_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[tax_lot_upload_log]'))
ALTER TABLE [dbo].[tax_lot_upload_log]  WITH CHECK ADD  CONSTRAINT [FK_tax_lot_upload_log_investor_platform] FOREIGN KEY([investor_id], [wrap_platform_id], [wrap_platform_client_id])
REFERENCES [dbo].[investor_platform] ([investor_id], [wrap_platform_id], [client_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_lot_upload_log] CHECK CONSTRAINT [FK_tax_lot_upload_log_investor_platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user]'))
ALTER TABLE [dbo].[web_user]  WITH NOCHECK ADD  CONSTRAINT [FK_web_user_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[web_user] CHECK CONSTRAINT [FK_web_user_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_group_users_web_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user_group_users]'))
ALTER TABLE [dbo].[web_user_group_users]  WITH CHECK ADD  CONSTRAINT [FK_web_user_group_users_web_user] FOREIGN KEY([web_user_id])
REFERENCES [dbo].[web_user] ([user_id])
GO
ALTER TABLE [dbo].[web_user_group_users] CHECK CONSTRAINT [FK_web_user_group_users_web_user]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_web_user_group_users_web_user_group]') AND parent_object_id = OBJECT_ID(N'[dbo].[web_user_group_users]'))
ALTER TABLE [dbo].[web_user_group_users]  WITH CHECK ADD  CONSTRAINT [FK_web_user_group_users_web_user_group] FOREIGN KEY([group_id])
REFERENCES [dbo].[web_user_group] ([group_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[web_user_group_users] CHECK CONSTRAINT [FK_web_user_group_users_web_user_group]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wrap_platform_permissions_domain]') AND parent_object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]'))
ALTER TABLE [dbo].[wrap_platform_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_wrap_platform_permissions_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[wrap_platform_permissions] CHECK CONSTRAINT [FK_wrap_platform_permissions_domain]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wrap_platform_permissions_wrap_platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[wrap_platform_permissions]'))
ALTER TABLE [dbo].[wrap_platform_permissions]  WITH CHECK ADD  CONSTRAINT [FK_wrap_platform_permissions_wrap_platform] FOREIGN KEY([wrap_platform_id])
REFERENCES [dbo].[wrap_platform] ([wrap_platform_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[wrap_platform_permissions] CHECK CONSTRAINT [FK_wrap_platform_permissions_wrap_platform]
GO
ALTER TABLE dbo.investor_meta_data ADD CONSTRAINT
	FK_investor_meta_data_investor FOREIGN KEY
	(
	investor_id
	) REFERENCES dbo.investor
	(
	investor_id
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
GO
ALTER TABLE [dbo].[work_in_progress]  WITH CHECK ADD  CONSTRAINT [FK_work_in_progress_investment] FOREIGN KEY([investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[work_in_progress]  WITH NOCHECK ADD  CONSTRAINT [FK_work_in_progress_investment1] FOREIGN KEY([cash_investment_id])
REFERENCES [dbo].[investment] ([investment_id])
GO
ALTER TABLE [dbo].[work_in_progress] CHECK CONSTRAINT [FK_work_in_progress_investment1]
GO
ALTER TABLE [dbo].[work_in_progress]  WITH NOCHECK ADD  CONSTRAINT [FK_work_in_progress_investor_platform] FOREIGN KEY([investor_id], [wrap_platform_id], [wrap_platform_client_id])
REFERENCES [dbo].[investor_platform] ([investor_id], [wrap_platform_id], [client_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[work_in_progress] CHECK CONSTRAINT [FK_work_in_progress_investor_platform]
GO

ALTER TABLE [dbo].[work_in_progress_policies]  WITH CHECK ADD  CONSTRAINT [FK_work_in_progress_policies_wrap_platform] FOREIGN KEY([wrap_platform_id])
REFERENCES [dbo].[wrap_platform] ([wrap_platform_id])
GO

/****** Object:  ForeignKey [FK_Column_Page]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_dashboard_column]  WITH CHECK ADD  CONSTRAINT [FK_Column_Page] FOREIGN KEY([widget_dashboard_page_id])
REFERENCES [dbo].[widget_dashboard_page] ([widget_dashboard_page_id])
GO
ALTER TABLE [dbo].[widget_dashboard_column] CHECK CONSTRAINT [FK_Column_Page]
GO
/****** Object:  ForeignKey [FK_default_widget_user_setting_widget]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_default_user_setting]  WITH CHECK ADD  CONSTRAINT [FK_default_widget_user_setting_widget] FOREIGN KEY([widget_id])
REFERENCES [dbo].[widget] ([widget_id])
GO
ALTER TABLE [dbo].[widget_default_user_setting] CHECK CONSTRAINT [FK_default_widget_user_setting_widget]
GO
/****** Object:  ForeignKey [FK_widget_domain_permission_domain]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_domain_permission]  WITH CHECK ADD  CONSTRAINT [FK_widget_domain_permission_domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domain] ([domain_id])
GO
ALTER TABLE [dbo].[widget_domain_permission] CHECK CONSTRAINT [FK_widget_domain_permission_domain]
GO
/****** Object:  ForeignKey [FK_widget_domain_permission_widget]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_domain_permission]  WITH CHECK ADD  CONSTRAINT [FK_widget_domain_permission_widget] FOREIGN KEY([widget_id])
REFERENCES [dbo].[widget] ([widget_id])
GO
ALTER TABLE [dbo].[widget_domain_permission] CHECK CONSTRAINT [FK_widget_domain_permission_widget]
GO
/****** Object:  ForeignKey [FK_widget_instance_dashboard_column]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance]  WITH CHECK ADD  CONSTRAINT [FK_widget_instance_dashboard_column] FOREIGN KEY([widget_dashboard_column_id])
REFERENCES [dbo].[widget_dashboard_column] ([widget_dashboard_column_id])
GO
ALTER TABLE [dbo].[widget_instance] CHECK CONSTRAINT [FK_widget_instance_dashboard_column]
GO
/****** Object:  ForeignKey [FK_WidgetInstance_Widget]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance]  WITH CHECK ADD  CONSTRAINT [FK_WidgetInstance_Widget] FOREIGN KEY([widget_id])
REFERENCES [dbo].[widget] ([widget_id])
GO
ALTER TABLE [dbo].[widget_instance] CHECK CONSTRAINT [FK_WidgetInstance_Widget]
GO
/****** Object:  ForeignKey [FK_WidgetInstanceUserSetting_WidgetInstance]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_instance_user_setting]  WITH CHECK ADD  CONSTRAINT [FK_WidgetInstanceUserSetting_WidgetInstance] FOREIGN KEY([widget_instance_id])
REFERENCES [dbo].[widget_instance] ([widget_instance_id])
GO
ALTER TABLE [dbo].[widget_instance_user_setting] CHECK CONSTRAINT [FK_WidgetInstanceUserSetting_WidgetInstance]
GO
/****** Object:  ForeignKey [FK_widget_role_permission_widget]    Script Date: 02/01/2012 09:56:11 ******/
ALTER TABLE [dbo].[widget_role_permission]  WITH CHECK ADD  CONSTRAINT [FK_widget_role_permission_widget] FOREIGN KEY([widget_id])
REFERENCES [dbo].[widget] ([widget_id])
GO
ALTER TABLE [dbo].[widget_role_permission] CHECK CONSTRAINT [FK_widget_role_permission_widget]
GO
/****** Object:  Statistic [fs_stat_owner_access]    Script Date: 04/17/2012 22:19:01 ******/
if  exists (select * from sys.stats where name = N'fs_stat_owner_access' and object_id = object_id(N'[dbo].[investment]'))
DROP STATISTICS [dbo].[investment].[fs_stat_owner_access]
GO
CREATE STATISTICS [fs_stat_owner_access] ON [dbo].[investment]([owner_id], [access_level])
go


/****** Object:  Statistic [fs_stat_access_id]    Script Date: 04/17/2012 22:20:05 ******/
if  exists (select * from sys.stats where name = N'fs_stat_access_id' and object_id = object_id(N'[dbo].[investment]'))
DROP STATISTICS [dbo].[investment].[fs_stat_access_id]
GO
CREATE STATISTICS [fs_stat_access_id] ON [dbo].[investment]([access_level], [investment_id])
go

/****** Object:  Statistic [fs_stat_id_owner_access_code]    Script Date: 04/17/2012 22:18:44 ******/
if  exists (select * from sys.stats where name = N'fs_stat_id_owner_access_code' and object_id = object_id(N'[dbo].[investment]'))
DROP STATISTICS [dbo].[investment].[fs_stat_id_owner_access_code]
GO
CREATE STATISTICS [fs_stat_id_owner_access_code] ON [dbo].[investment]([investment_id], [owner_id], [access_level], [investment_code])
go


/****** Object:  Index [IX_investment_overrides_domain]    Script Date: 04/17/2012 22:21:36 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[investment_overrides]') AND name = N'IX_investment_overrides_domain')
DROP INDEX [IX_investment_overrides_domain] ON [dbo].[investment_overrides] WITH ( ONLINE = OFF )
GO
CREATE NONCLUSTERED INDEX [IX_investment_overrides_domain] ON [dbo].[investment_overrides] 
(
	[domain_id] ASC
)WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_investment FOREIGN KEY
	(
	investment_id
	) REFERENCES dbo.investment
	(
	investment_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
GO
ALTER TABLE dbo.investment_category_map_override ADD CONSTRAINT
	FK_investment_category_map_override_investment_category_map FOREIGN KEY
	(
	investment_id
	) REFERENCES dbo.investment_category_map
	(
	investment_id
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 	

GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category1_category FOREIGN KEY
	(
	category1
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category2_category FOREIGN KEY
	(
	category2
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category3_category FOREIGN KEY
	(
	category3
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category4_category FOREIGN KEY
	(
	category4
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category5_category FOREIGN KEY
	(
	category5
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category6_category FOREIGN KEY
	(
	category6
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category7_category FOREIGN KEY
	(
	category7
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category8_category FOREIGN KEY
	(
	category8
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category9_category FOREIGN KEY
	(
	category9
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.investment_category_map ADD CONSTRAINT
	FK_investment_category_map_category10_category FOREIGN KEY
	(
	category10
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 

GO
ALTER TABLE dbo.category_override ADD CONSTRAINT
	FK_category_override_category FOREIGN KEY
	(
	category_id
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 	

GO
ALTER TABLE dbo.compliance_template_node ADD CONSTRAINT
	FK_compliance_template_node_category FOREIGN KEY
	(
	category_id
	) REFERENCES dbo.category
	(
	category_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 

GO

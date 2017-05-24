INSERT INTO domain (domain_id, domain_name, is_system_domain, display_props, license_expiry, max_investors,
	authorisation_mode, is_mda_operator, allow_investor_login)
	VALUES ('system', 'system', 1, 6, '2007-06-29 07:14:00.627', '',
	0, 0, 0);

INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (-1, 'None', '', '', '', null, null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1, 'Unit Test1', 'Ima.ServiceAgents', 'Ima.ServiceAgents.DefaultHoldingsAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (4, 'Unit Test2', 'Ima.ServiceAgents', 'Ima.ServiceAgents.DefaultHoldingsAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (2, 'Unit Test3', 'Ima.ServiceAgents', 'Ima.ServiceAgents.DefaultHoldingsAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control, broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name, transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES(10, 'ANZCustody', '', '', '', '', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control, broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name, transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES(11, 'Unit Test4', 'Ima.ServiceAgents', 'Ima.ServiceAgents.VTN.SkandiaVTNAgent', '', '', null, null, null, null, 0, 66);

INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1001, 'Unit Test5', 'Ima.ServiceAgents', 'Ima.ServiceAgents.ANZ.ANZHoldingsAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1002, 'Unit Test6', 'Ima.ServiceAgents', 'Ima.ServiceAgents.ANZ.ANZCashAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 9966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1003, 'Unit Test7', 'Ima.ServiceAgents', 'Ima.ServiceAgents.VTN.SkandiaVTNAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1004, 'Unit Test8', 'Ima.ServiceAgents', 'Ima.ServiceAgents.BankWestCMTAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);
INSERT INTO wrap_platform (wrap_platform_id, wrap_platform_name, assembly, class_name, user_control,
	broker_link_url, broker_allocation_url, broker_order_status_url, portfolio_id_name,
	transaction_export_type, reconcile_holdings, data_feed_configuration)
	VALUES (1005, 'Unit Test9', 'Ima.ServiceAgents', 'Ima.ServiceAgents.BellPotterHoldingsAgent', 'WrapPlatformControls/DefaultFileUpload.ascx', 
	'http://localhost/BrokerLink/Default.aspx', null, null, null, null, 0, 966);

INSERT INTO currency (currency_code, currency_name, exchange_rate, is_default)
	VALUES ('AUD', 'aud', 1, 1);
INSERT INTO currency (currency_code, currency_name, exchange_rate, is_default)
	VALUES ('NZD', 'nzd', 1, 0);
INSERT INTO currency (currency_code, currency_name, exchange_rate, is_default)
	VALUES ('USD', 'usd', 1, 0);

/******************************************************\
	Default contact relationship data
\******************************************************/
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '5962E93B-E95D-4354-8331-F030563F6380')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('5962E93B-E95D-4354-8331-F030563F6380', 1, 'Partner', 'is partner of', 'is partner of')
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '7E61FE80-E911-43a4-A1CF-DEA239CD31E5')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('7E61FE80-E911-43a4-A1CF-DEA239CD31E5', 2, 'Child', 'is parent of', 'is child of')
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '23A55B8D-68E2-4634-BF2E-4FA2F59298EB')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('23A55B8D-68E2-4634-BF2E-4FA2F59298EB', 3, 'Accountant', 'is accountant of', 'is accountant for')
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '1258B4DD-C3A2-4acd-BAC5-0A051F5FB687')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('1258B4DD-C3A2-4acd-BAC5-0A051F5FB687', 4, 'Lawyer', 'is lawyer of', 'is lawyer for')
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '857E1802-3D8F-453c-BB1D-CF0A250F1281')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('857E1802-3D8F-453c-BB1D-CF0A250F1281', 5, 'Relation', 'is related to', 'is related to')
IF NOT EXISTS(SELECT * FROM contact_relationship_types WHERE contact_relationship_type_id = '2FD5237B-55FF-485f-8E33-8CD776A6B777')
	INSERT INTO contact_relationship_types
		(contact_relationship_type_id, display_order, [name], parent_description, child_description)
		VALUES
		('2FD5237B-55FF-485f-8E33-8CD776A6B777', 6, 'Sibling', 'is sibling of', 'is sibling of')

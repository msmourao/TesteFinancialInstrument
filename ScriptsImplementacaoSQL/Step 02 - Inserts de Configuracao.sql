USE [SimpleTests]
GO
DELETE FROM [dbo].[tblFinancialInstrumentClassificationRules]
INSERT INTO [dbo].[tblFinancialInstrumentClassificationRules]([Description], [MaxValue], [IsDefault]) VALUES('Low Value',1000000,0)
INSERT INTO [dbo].[tblFinancialInstrumentClassificationRules]([Description], [MaxValue], [IsDefault]) VALUES('Medium Value',5000000,0)
INSERT INTO [dbo].[tblFinancialInstrumentClassificationRules]([Description], [MaxValue], [IsDefault]) VALUES('Medium Value',0,1)
GO
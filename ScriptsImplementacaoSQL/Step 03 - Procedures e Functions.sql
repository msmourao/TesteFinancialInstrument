USE [SimpleTests]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_classify_instrument]
(
	@MarketValue AS money,
	@Type AS varchar(50)
)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @result varchar(50)	 
	
	SELECT TOP 1 @result = [Description]
	FROM [dbo].[tblFinancialInstrumentClassificationRules]
	WHERE (@MarketValue < MaxValue) OR IsDefault = 1
	ORDER BY CASE WHEN IsDefault = 1 THEN 2 ELSE 1 END, MaxValue

	RETURN @result
END
GO

CREATE PROCEDURE [dbo].[sp_classify_financial_instruments]
	@FinancialInstruments [dbo].[FinancialInstrumentListType] READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [MarketValue], [Type], dbo.fn_classify_instrument([MarketValue], [Type]) AS EvaluationResult
	INTO #InstrumentEvaluations
	FROM @FinancialInstruments

	INSERT INTO [dbo].[tblFinancialInstrument]([MarketValue], [Type], [EvaluationResult])
	SELECT [MarketValue], [Type], [EvaluationResult]
	FROM #InstrumentEvaluations

	SELECT [MarketValue], [Type], [EvaluationResult]
	FROM #InstrumentEvaluations
END
GO




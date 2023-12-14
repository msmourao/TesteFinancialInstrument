USE [SimpleTests]
GO

CREATE TABLE [dbo].[tblFinancialInstrument](
	[EvaluationId] [bigint] IDENTITY(1,1) NOT NULL,
	[MarketValue] [money] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[EvaluationResult] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblFinancialInstrument_1] PRIMARY KEY CLUSTERED 
(
	[EvaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblFinancialInstrumentClassificationRules](
	[ClassificationId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[MaxValue] [money] NOT NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_tblFinancialInstrumentClassificationRules] PRIMARY KEY CLUSTERED 
(
	[ClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TYPE [dbo].[FinancialInstrumentListType] AS TABLE(
	[MarketValue] [money] NOT NULL,
	[Type] [varchar](50) NOT NULL
)
GO
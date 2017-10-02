CREATE TABLE [dbo].[TimeZones] (
    [ID]          TINYINT       IDENTITY (1, 1) NOT NULL,
    [Code]        VARCHAR (10)  NOT NULL,
    [Description] NVARCHAR (50) NULL,
    CONSTRAINT [PK_TimeZones] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UC_TimeZones] UNIQUE NONCLUSTERED ([Code] ASC)
);


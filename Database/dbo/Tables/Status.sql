CREATE TABLE [dbo].[Status] (
    [ID]          TINYINT       IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UC_Status_Description] UNIQUE NONCLUSTERED ([Description] ASC)
);


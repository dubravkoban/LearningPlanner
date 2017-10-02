CREATE TABLE [dbo].[MaterialsChains] (
    [MaterialsID]       INT            NOT NULL,
    [ChainsID]          SMALLINT       NOT NULL,
    [MaterialsPosition] TINYINT        NOT NULL,
    [Progress]          TINYINT        NOT NULL,
    [StatusID]          TINYINT        NOT NULL,
    [Comment]           NVARCHAR (200) NULL,
    [StartDate]         DATE           NULL,
    [EndDate]           DATE           NULL,
    CONSTRAINT [PK_MaterialsChains] PRIMARY KEY CLUSTERED ([MaterialsID] ASC, [ChainsID] ASC),
    CONSTRAINT [FK_MaterialsChains_Chains] FOREIGN KEY ([ChainsID]) REFERENCES [dbo].[Chains] ([ID]),
    CONSTRAINT [FK_MaterialsChains_Materials] FOREIGN KEY ([MaterialsID]) REFERENCES [dbo].[Materials] ([ID]),
    CONSTRAINT [UC_MaterialsChains_Chains_EndDate] UNIQUE NONCLUSTERED ([ChainsID] ASC, [EndDate] ASC),
    CONSTRAINT [UC_MaterialsChains_Chains_Position] UNIQUE NONCLUSTERED ([ChainsID] ASC, [MaterialsPosition] ASC),
    CONSTRAINT [UC_MaterialsChains_StartDate] UNIQUE NONCLUSTERED ([ChainsID] ASC, [StartDate] ASC)
);


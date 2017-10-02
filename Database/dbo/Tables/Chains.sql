CREATE TABLE [dbo].[Chains] (
    [ID]       SMALLINT       IDENTITY (1, 1) NOT NULL,
    [StatusID] TINYINT        NOT NULL,
    [UsersID]  SMALLINT       NOT NULL,
    [Progress] TINYINT        NOT NULL,
    [Comment]  NVARCHAR (MAX) NULL,
    [Position] TINYINT        NOT NULL,
    CONSTRAINT [PK_Chains] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Chains_Status] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Status] ([ID]),
    CONSTRAINT [FK_Chains_Users] FOREIGN KEY ([UsersID]) REFERENCES [dbo].[Users] ([ID]),
    CONSTRAINT [UC_Chains_Position] UNIQUE NONCLUSTERED ([UsersID] ASC, [Position] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Chains_Status]
    ON [dbo].[Chains]([StatusID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Chains_Users]
    ON [dbo].[Chains]([UsersID] ASC);


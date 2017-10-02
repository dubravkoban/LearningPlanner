CREATE TABLE [dbo].[Tags] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [UsersID]     SMALLINT      NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [ParentTagID] INT           NULL,
    CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Tags_Tags] FOREIGN KEY ([ParentTagID]) REFERENCES [dbo].[Tags] ([ID]),
    CONSTRAINT [FK_Tags_Users] FOREIGN KEY ([UsersID]) REFERENCES [dbo].[Users] ([ID]),
    CONSTRAINT [UC_Tags_Name] UNIQUE NONCLUSTERED ([UsersID] ASC, [Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Tags_Users]
    ON [dbo].[Tags]([UsersID] ASC);


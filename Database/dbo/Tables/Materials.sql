CREATE TABLE [dbo].[Materials] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [UsersID]     SMALLINT       NOT NULL,
    [Text]        NVARCHAR (MAX) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [PriorityID]  TINYINT        NULL,
    [RatingID]    TINYINT        NULL,
    [TypeID]      TINYINT        NOT NULL,
    [Comment]     NVARCHAR (200) NULL,
    CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Materials_Priority] FOREIGN KEY ([PriorityID]) REFERENCES [dbo].[Priority] ([ID]),
    CONSTRAINT [FK_Materials_Ratings] FOREIGN KEY ([RatingID]) REFERENCES [dbo].[Ratings] ([ID]),
    CONSTRAINT [FK_Materials_Types] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[Types] ([ID]),
    CONSTRAINT [FK_Materials_Users] FOREIGN KEY ([UsersID]) REFERENCES [dbo].[Users] ([ID]),
    CONSTRAINT [UC_Materials_Name] UNIQUE NONCLUSTERED ([UsersID] ASC, [Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Materials_Users]
    ON [dbo].[Materials]([UsersID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Materials_Priority]
    ON [dbo].[Materials]([PriorityID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Materials_Rating]
    ON [dbo].[Materials]([RatingID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Materials_Type]
    ON [dbo].[Materials]([TypeID] ASC);


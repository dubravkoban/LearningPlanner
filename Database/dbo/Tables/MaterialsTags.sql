CREATE TABLE [dbo].[MaterialsTags] (
    [MaterialsID] INT NOT NULL,
    [TagsID]      INT NOT NULL,
    CONSTRAINT [PK_MaterialsTags] PRIMARY KEY CLUSTERED ([MaterialsID] ASC, [TagsID] ASC),
    CONSTRAINT [FK_MaterialsTags_Materials] FOREIGN KEY ([MaterialsID]) REFERENCES [dbo].[Materials] ([ID]),
    CONSTRAINT [FK_MaterialsTags_Tags] FOREIGN KEY ([TagsID]) REFERENCES [dbo].[Tags] ([ID])
);


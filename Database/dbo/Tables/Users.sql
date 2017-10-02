CREATE TABLE [dbo].[Users] (
    [ID]                   SMALLINT       IDENTITY (1, 1) NOT NULL,
    [Username]             NVARCHAR (50)  NOT NULL,
    [HashPassword]         BIT            NOT NULL,
    [Email]                NVARCHAR (50)  NULL,
    [Name]                 NVARCHAR (100) NOT NULL,
    [Surname]              NVARCHAR (200) NOT NULL,
    [DayOfBirth]           DATE           NULL,
    [NextChainReminder]    INT            NULL,
    [IdleMaterialReminder] INT            NULL,
    [NotificationEndDate]  DATE           NULL,
    [NotificationTime]     INT            NULL,
    [TimeZonesID]          TINYINT        NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Users_TimeZones] FOREIGN KEY ([TimeZonesID]) REFERENCES [dbo].[TimeZones] ([ID]),
    CONSTRAINT [UC_Users_Email] UNIQUE NONCLUSTERED ([Email] ASC),
    CONSTRAINT [UC_Users_Username] UNIQUE NONCLUSTERED ([Username] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Users_TimeZones]
    ON [dbo].[Users]([TimeZonesID] ASC);


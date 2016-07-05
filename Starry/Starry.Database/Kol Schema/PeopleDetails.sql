﻿CREATE TABLE [dbo].[PeopleDetails]
(
	[_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [weight] NVARCHAR(50) NULL, 
    [avg_audience] INT NULL, 
    [analysis] NVARCHAR(MAX) NULL, 
    [owner_id] INT NOT NULL, 
    [crawled_times] NCHAR(10) NOT NULL, 
    [profile_pic] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [CK_PeopleDetails_People] FOREIGN KEY ([owner_id]) REFERENCES [People]([owner_id])
)
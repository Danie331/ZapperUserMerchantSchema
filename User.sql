﻿CREATE TABLE  [dbo].[User] (
    [UserId] INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    DateCreated DATETIME DEFAULT GETDATE() NOT NULL,
    DateUpdated DATETIME NULL
);


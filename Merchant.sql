CREATE TABLE dbo.Merchant (
    MerchantId int PRIMARY KEY IDENTITY(1,1),
    MerchantName VARCHAR(255)  NOT NULL,
    Email VARCHAR(100) UNIQUE  NOT NULL,
    Phone VARCHAR(20)  NOT NULL,
    BusinessAddress VARCHAR(255)  NOT NULL,
    BusinessType VARCHAR(100)  NOT NULL,
    DateCreated DATETIME DEFAULT GETDATE() NOT NULL
);
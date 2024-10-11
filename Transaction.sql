CREATE TABLE [dbo].[Transaction]
(
	[TransactionId] INT PRIMARY KEY IDENTITY(1,1),
	[TransactionUniqueId] uniqueidentifier NOT NULL,
    UserId INT NOT NULL,
    MerchantId INT NOT NULL,
    PaymentTypeId INT NOT NULL,
    [TranValue] DECIMAL(10, 2) NOT NULL,
    Currency VARCHAR(10) NOT NULL,
    TransactionDate DATETIME DEFAULT GETDATE() NOT NULL,
    TransactionStatusId INT NOT NULL,
     CONSTRAINT FK_User FOREIGN KEY (UserId) REFERENCES [User](UserId),
    CONSTRAINT FK_Merchant FOREIGN KEY (MerchantId) REFERENCES Merchant(MerchantId),
     CONSTRAINT FK_PaymentType FOREIGN KEY (PaymentTypeId) REFERENCES PaymentType(PaymentTypeId),
    CONSTRAINT FK_TransactionStatus FOREIGN KEY (TransactionStatusId) REFERENCES TransactionStatus(TransactionStatusId)
)

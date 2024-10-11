CREATE TABLE [dbo].[MerchantWallet]
(
	[MerchantWalletId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	MerchantId INT NOT NULL,
	KittyBalance DECIMAL(18, 2) DEFAULT 0 NOT NULL,
	FeesOwing DECIMAL(18, 2) DEFAULT 0 NOT NULL,
	PayoutDate DATETIME DEFAULT GETDATE() NOT NULL,
	BankAccountNumber VARCHAR(13) NOT NULL,
	CONSTRAINT FK_MerchantWalletMerchant FOREIGN KEY (MerchantId) REFERENCES Merchant(MerchantId)
)

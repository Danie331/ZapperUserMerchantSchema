CREATE FUNCTION [dbo].[CheckUserSettingEnabled]
(
	@settings char(8),
	@setting int 
)
RETURNS BIT
AS
BEGIN
	DECLARE @result BIT;
	IF SUBSTRING(@settings, @setting, 1) = '1'
		SET @result = 1;
    ELSE
        SET @result = 0;

	RETURN @result;
END

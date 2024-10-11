--
--!!!Full disclosure: This is generated using ChatGPT (I couldn't find a more efficient way of doing this myself)
--
CREATE PROCEDURE [dbo].[StoreSettingsInFile]
(
    @settings TINYINT,  -- Settings stored as bits
    @filePath NVARCHAR(255)  -- Path to the file where the settings will be stored
)
AS
BEGIN
    DECLARE @cmd NVARCHAR(500);
    
    -- Convert the settings into binary string
    DECLARE @settingsBinary NVARCHAR(8);
    SET @settingsBinary = 
        CASE WHEN (@settings & 128) = 128 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 64) = 64 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 32) = 32 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 16) = 16 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 8) = 8 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 4) = 4 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 2) = 2 THEN '1' ELSE '0' END + 
        CASE WHEN (@settings & 1) = 1 THEN '1' ELSE '0' END;
    
    -- Command to write the settings into the file using echo command
    SET @cmd = 'echo ' + @settingsBinary + ' > ' + @filePath;

    -- Execute the shell command to write the settings to the file
    EXEC xp_cmdshell @cmd;
END;

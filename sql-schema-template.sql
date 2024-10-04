USE sbx
GO

IF OBJECT_ID('dbo.YourTableName', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.YourTableName;
END

CREATE TABLE dbo.YourTableName (
    -- Column definitions here
);

﻿/*
Deployment script for starry

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "starry"
:setvar DefaultFilePrefix "starry"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
PRINT N'Creating [dbo].[Room_Insert]...';


GO
CREATE PROCEDURE [dbo].[Room_Insert]
	@room_id INT,
    @owner_id INT,
	@online INT, 
    @category NVARCHAR(50), 
    @gift NVARCHAR(MAX), 
    @timestamp DATETIME
AS
	INSERT INTO [dbo].[Room]
	VALUES (@room_id, @owner_id, @online, @category, @gift, @timestamp);
RETURN 0
GO
PRINT N'Update complete.';


GO

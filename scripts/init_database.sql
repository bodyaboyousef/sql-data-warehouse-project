/*
===========================================================================
Create Database and schemas
===========================================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', 'gold'.

WARNING:
    Runing this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanetly deleted. proceed with caution
    and ensure you have proper backups before runing this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

--create the 'DataWarehouse' database 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--create Schemas 
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO



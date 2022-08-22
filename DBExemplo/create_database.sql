-- Drop database
IF DB_ID('DBExemplo') IS NOT NULL begin 
   ALTER DATABASE DBExemplo set single_user with rollback immediate; 
   DROP DATABASE DBExemplo;
end 

-- Create database
CREATE DATABASE DBExemplo;
GO

USE DBExemplo;
GO


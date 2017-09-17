CREATE PROCEDURE SP_AddNewCustomer
(
@FirstName VARCHAR(100),
@LastName VARCHAR(100),
@City VARCHAR(100),
@Country VARCHAR(100),
@Phone VARCHAR(100)
)
AS
BEGIN
	BEGIN TRY

	INSERT INTO [dbo].[tblCustomer]
           ([FirstName]
           ,[LastName]
           ,[City]
           ,[Country]
           ,[Phone])
     VALUES
           (@FirstName
           ,@LastName
           ,@City
           ,@Country
           ,@Phone)
           

	END TRY

	BEGIN CATCH

	INSERT INTO [dbo].[tblErrorLog]
           ([ErrorNumber]
           ,[ErrorProcedure]
           ,[ErrorLine]
           ,[ErrorMessage]
           ,[CreatedDate])
     VALUES
           (ERROR_NUMBER()
           ,Error_Procedure()
           ,Error_Line()
           ,Error_Message()
           ,SYSDATETIME())

	END CATCH
END
GO
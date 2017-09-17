CREATE PROCEDURE SP_GetAllCustomers
AS
BEGIN
	BEGIN TRY

	SELECT [Id] 'Customer Id'
      ,[FirstName] 'First Name'
      ,[LastName] 'Last Name'
      ,[City] 'City'
      ,[Country] 'Country'
      ,[Phone] 'Phone No.'
      ,[CreatedDate] 'Created Date'
  FROM [dbo].[tblCustomer]

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

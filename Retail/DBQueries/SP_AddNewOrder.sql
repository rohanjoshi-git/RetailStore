CREATE PROCEDURE SP_AddNewOrder
(
@OrderDate datetime,
@OrderNumber varchar(10),
@CustomerId int,
@TotalAmount decimal(12,2)
)
AS
BEGIN
	BEGIN TRY

	INSERT INTO [dbo].[tblOrder]
           ([OrderDate]
           ,[OrderNumber]
           ,[CustomerId]
           ,[TotalAmount])
     VALUES
           (@OrderDate
           ,@OrderNumber
           ,@CustomerId
           ,@TotalAmount)
           
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
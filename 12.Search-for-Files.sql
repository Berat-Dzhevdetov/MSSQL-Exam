CREATE PROC usp_SearchForFiles @fileExtension VARCHAR(20)
AS
	SELECT Id,Name,CONCAT(Size,'KB') AS Size FROM Files
	WHERE Name LIKE '%.' + @fileExtension
	ORDER BY Id,[Name],Size DESC

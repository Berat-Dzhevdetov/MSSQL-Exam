CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(MAX))
RETURNS INT
AS BEGIN
	RETURN (
		SELECT Count(*) as [Count] FROM Commits AS c
		JOIN Users AS u ON c.ContributorId = u.Id
		WHERE u.Username = @username
		)
END

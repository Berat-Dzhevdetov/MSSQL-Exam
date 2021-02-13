SELECT TOP(5) r.Id, r.Name, COUNT(*) AS Commits
FROM RepositoriesContributors AS rc
JOIN Repositories r ON rc.RepositoryId = r.Id
JOIN Commits c ON r.Id = c.RepositoryId
GROUP BY r.Id, r.Name
ORDER BY Commits DESC, r.Id, r.Name

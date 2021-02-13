SELECT i.Id, CONCAT(u.Username, ' : ', i.Title) AS IssueAssignee 
FROM Issues AS i
JOIN Repositories AS r ON r.Id=i.RepositoryId
JOIN Users AS u ON I.AssigneeId = u.Id
ORDER BY i.Id DESC,i.AssigneeId

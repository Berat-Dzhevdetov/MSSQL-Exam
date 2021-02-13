SELECT i.Id, CONCAT(u.Username, ' : ', i.Title) AS IssueAssignee 
FROM Issues as i
JOIN Repositories AS r on r.Id=i.RepositoryId
JOIN Users AS u ON I.AssigneeId = u.Id
ORDER BY i.Id DESC,i.AssigneeId

--get all statuses, not repeating, alphabetically ordered

--SELECT DISTINCT status FROM Tasks
--ORDER BY status

--get the count of all tasks in each project, order by tasks countdescending

--SELECT Projects.name AS ProjectName, COUNT(Tasks.name) AS TaskName FROM Tasks
--	RIGHT OUTER JOIN Projects
--	ON projectId = Projects.id
--	GROUP BY Projects.name
--	ORDER BY TaskName DESC 
 

--get the count of all tasks in each project, order by projectsnames

--SELECT Projects.name AS ProjectName, COUNT(Tasks.name) AS TaskName FROM Tasks
--	RIGHT OUTER JOIN Projects
--	ON projectId = Projects.id
--	GROUP BY Projects.name
--	ORDER BY ProjectName 

--get the tasks for all projects having the name beginning with"N" letter

--SELECT * FROM Tasks
--WHERE name LIKE 'N%'

--get the list of all projects containing the 'a' letter in the middle of the name, and show the tasks count near each project. Mention that there can exist projects without tasks and tasks with project_id = NULL

--SELECT Projects.name AS ProjectName, COUNT(Tasks.name) AS TaskName FROM Tasks
--	RIGHT OUTER JOIN Projects
--	ON projectId = Projects.id
--	WHERE Projects.name LIKE '%a%' 
--	GROUP BY Projects.name

--get the list of tasks with duplicate names. Order alphabetically

--SELECT * FROM Tasks 
--WHERE (name) IN (SELECT name FROM Tasks
--	GROUP BY name
--	HAVING COUNT(*)>1)
--ORDER BY name

--get list of tasks having several exact matches of both name and status, from the project 'Garage'. Order by matches count

--SELECT Projects.name AS ProjectName, Tasks.name AS TaskName, Tasks.status, COUNT(Tasks.name) AS CountDubT FROM Tasks
--RIGHT OUTER JOIN Projects ON projectId = Projects.id
--WHERE Projects.name IN ('firstPr')
--GROUP BY Projects.name, Tasks.name, Tasks.status
--HAVING COUNT(*) > 1

--get the list of project names having more than 10 tasks in status 'completed'. Order by project_id

--SELECT Projects.name AS ProjectName, COUNT(Tasks.name) AS TaskName FROM Tasks 
--RIGHT OUTER JOIN Projects
--ON projectId = Projects.id
--WHERE Tasks.status LIKE 'completed'
--GROUP BY Projects.name
--HAVING COUNT(Tasks.name) > 10
--ORDER BY Projects.name
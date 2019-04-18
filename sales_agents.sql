-- Employees Who Are Sales Agents --
Select [Name] = e.[FirstName] + ' ' + e.[Lastname], e.Title
from dbo.Employee e -- From Employee DataBase --
where e.Title = 'Sales Support Agent' -- self explanatory 
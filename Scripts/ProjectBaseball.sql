select min(yearid), max(yearid)
from batting
Answer one is 1871 - 2016

Select min(height)
From people

Select namefirst, namelast, height, playerid
From people
Where height = 43

Select teamid, g_all
From appearances
Where playerid = 'gaedeed01'

Select name
From teams
Where teamid = 'SLA'

Answer two name is Eddie Gaedel and height is 43 and team is St. Louis Browns and played one game.

Select *
From schools
Where schoolname = 'Vanderbilt University'

Select collegeplaying.playerid, people.namefirst, people.namelast, sum(salaries.salary) AS totalsalary
From collegeplaying
Inner Join people ON collegeplaying.playerid = people.playerid
Inner Join salaries ON collegeplaying.playerid = salaries.playerid
Where collegeplaying.schoolid = 'vandy'
Group By collegeplaying.playerid, people.namefirst, people.namelast
Order By totalsalary DESC
Answer 3 is David Price who earned the most total salary at 245553888.

Select (case when pos = 'OF' then 'Outfield'
			  When pos = 'SS' OR pos = '1B' OR pos ='2B' OR pos = '3B' Then 'Infield'
			  Else 'Battery' 
			  END) AS positioncategory, SUM(po) AS putouttotal
			  
From fielding
Where yearid = 2016
Group BY positioncategory
Answer 4 Battery is 41424, Infield is 58394, Outfield is 29560.

Select yearid/10*10 AS decade, Round (SUM (pitching.so)/SUM (CAST(pitching.g AS decimal)),2) AS strikeoutaverage, Round (SUM (pitching.hr)/SUM (CAST(pitching.g AS decimal)),2) AS homerunaverage
From pitching
Group By decade
Order by decade
Answer 5 Homerun averages trend upwards. Strikeout averages are a can of worms.

Select *
From batting
Where yearid = 2016
sb/(sb + cs)

SELECT SUM(b.sb) * 100.0 / NULLIF(SUM(b.sb + b.cs),0) AS percent_success,
p.namefirst, p.namelast, sb, cs
FROM batting AS b
INNER JOIN people AS p
ON p.playerid = b.playerid
WHERE b.yearid = '2016' and sb + cs >= 20
GROUP BY p.namefirst, p.namelast, sb, cs
ORDER BY percent_success DESC;
Answer 6 is Chris Owings
	  

			




select min(yearid), max(yearid)
from batting
Answer 1 is 1871 - 2016

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

Answer 2 name is Eddie Gaedel and height is 43 and team is St. Louis Browns and played one game.

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


SELECT SUM(b.sb) * 100.0 / SUM(b.sb + b.cs) AS percent_success,
p.namefirst, p.namelast, sb, cs
FROM batting AS b
INNER JOIN people AS p
ON p.playerid = b.playerid
WHERE b.yearid = '2016' and sb + cs >= 20
GROUP BY p.namefirst, p.namelast, sb, cs
ORDER BY percent_success DESC;
Answer 6 is Chris Owings


Select teams.name, yearid, w
FROM teams
WHERE yearid >= 1970 AND yearid <= 2016 AND wswin = 'N'
ORDER BY w DESC

Select teams.name, yearid, w
FROM teams
WHERE yearid >= 1970 AND yearid <= 2016 AND wswin = 'Y' AND yearid <> 1981
ORDER BY w ASC

Select teams.name, teams.yearid, teams.w
FROM teams
JOIN (
	SELECT Distinct yearid, MAX(w) AS maxwins
	FROM teams
	GROUP BY yearid
) teamswithmaxwins
ON teams.w = teamswithmaxwins.maxwins AND teams.yearid = teamswithmaxwins.yearid
WHERE teams.yearid >= 1970 AND teams.yearid <= 2016 AND teams.wswin = 'Y'


Answer 7 Largest number of wins is 116 for Seattle Mariners in 2001. LA Dodgers smallest number of wins for team that did win world series. Player strike happened
in 1981. Players lost more money than owners during that time. After removing 1981 St Louis Cardinals only had 83 wins. 12 times the teams with the most wins win the 
world series. 32.4% of the time.

SELECT DISTINCT team, park, SUM(attendance)/SUM(games) AS averageattendance
FROM homegames
GROUP BY team, park
WHERE	  

			




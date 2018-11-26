use GameDatabase

Select Console.ConsoleID, Console.ConsoleName, Console.ConsolePrice, Console.ConsoleReleaseDate, Company.CompanyName
From Console

left JOIN Company ON Console.CompanyID = Company.CompanyID

WHERE ConsoleName = 'Console Name'
;
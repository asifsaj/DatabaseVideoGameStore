use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, Game.GamePrice, ESRB_Rating.RatingName, Console.ConsoleName, Genre.GenreName, Company.CompanyName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Viewing Console*/
left JOIN ConsoleGameJunction ON Game.GameID = ConsoleGameJunction.GameID
left join Console on Console.ConsoleID = ConsoleGameJunction.ConsoleID

/*Genre*/
left JOIN GenreGameJunction ON Game.GameID = GenreGameJunction.GameID
left join Genre on Genre.GenreID = GenreGameJunction.GenreID

/*Company*/
left JOIN CompanyGameJunction ON Game.GameID = CompanyGameJunction.GameID
left join Company on Company.CompanyID = CompanyGameJunction.CompanyID

WHERE Console.ConsoleName = 'Xbox One' AND Game.GameName = 'Fallout 4'

ORDER BY GameReleaseDate desc;


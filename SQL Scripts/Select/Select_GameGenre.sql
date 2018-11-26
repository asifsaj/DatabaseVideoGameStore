use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, ESRB_Rating.RatingName, Genre.GenreName, Console.ConsoleName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Genre*/
left JOIN GenreGameJunction ON Game.GameID = GenreGameJunction.GameID
left join Genre on Genre.GenreID = GenreGameJunction.GenreID

left JOIN Console ON Console.ConsoleID = Game.ConsoleID

Where Genre.GenreName LIKE '%fighting%'

ORDER BY GameReleaseDate desc;


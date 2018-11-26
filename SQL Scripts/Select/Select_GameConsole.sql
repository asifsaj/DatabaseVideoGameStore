use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, Game.GamePrice, ESRB_Rating.RatingName, Console.ConsoleName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Console*/
left join Console on Console.ConsoleID = Game.ConsoleID

Where Console.ConsoleName LIKE '%%'

ORDER BY GameReleaseDate desc;


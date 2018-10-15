use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, ESRB_Rating.RatingName, Genre.GenreName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Genre*/
left JOIN GenreGameJunction ON Game.GameID = GenreGameJunction.GameID
left join Genre on Genre.GenreID = GenreGameJunction.GenreID

Where Genre.GenreName = 'Action'

ORDER BY GameReleaseDate desc;


use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, Game.GamePrice, ESRB_Rating.RatingName, Company.CompanyName, Console.ConsoleName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Company*/
left JOIN CompanyGameJunction ON Game.GameID = CompanyGameJunction.GameID
left join Company on Company.CompanyID = CompanyGameJunction.CompanyID

/*Console*/
left JOIN Console ON Console.ConsoleID = Game.ConsoleID

/*Where Game.GameName = 'Dragon Age: Inquisition'*/

WHERE CompanyName LIKE '%Insomniac%'

ORDER BY GameReleaseDate desc;


use GameDatabase

SELECT Game.GameID, Game.GameName, Game.GameReleaseDate, Game.Quantity, Game.GamePrice, ESRB_Rating.RatingName, Company.CompanyName
FROM Game

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Company*/
left JOIN CompanyGameJunction ON Game.GameID = CompanyGameJunction.GameID
left join Company on Company.CompanyID = CompanyGameJunction.CompanyID

Where Game.GameName = 'Dragon Age: Inquisition'

ORDER BY GameReleaseDate desc;


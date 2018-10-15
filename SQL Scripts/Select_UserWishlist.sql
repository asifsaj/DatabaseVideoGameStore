use GameDatabase

SELECT UserInformation.UserName, Game.GameName, Game.Quantity, ESRB_Rating.RatingName, Console.ConsoleName
FROM UserInformation

/*WishlistGames*/
left JOIN Wishlist ON Wishlist.UserID = UserInformation.UserID
left JOIN Game ON Game.GameID = Wishlist.GameID

/*ESRB Rating*/
left JOIN ESRB_Rating ON Game.RatingID = ESRB_Rating.RatingID

/*Console*/
left JOIN Console ON Console.ConsoleID = Game.ConsoleID

ORDER BY GameReleaseDate desc;


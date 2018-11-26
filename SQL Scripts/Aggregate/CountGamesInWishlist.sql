USE GameDatabase

SELECT COUNT(Wishlist.GameID) AS Popularity_Count, Game.GameName, Console.ConsoleName, Game.Quantity
FROM Wishlist

left JOIN Game ON Game.GameID = Wishlist.GameID

left JOIN Console ON Console.ConsoleID = Game.ConsoleID

GROUP BY Game.GameName, Game.Quantity, Console.ConsoleName

ORDER BY Popularity_Count desc;

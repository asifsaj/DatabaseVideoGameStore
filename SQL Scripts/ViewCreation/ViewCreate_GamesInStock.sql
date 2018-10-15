use GameDatabase
GO

/*CREATE VIEW GamesInStock AS*/
SELECT Game.GameName, Game.Quantity, Game.GamePrice, Console.ConsoleName
FROM Game
left join Console on Console.ConsoleID = Game.ConsoleID
WHERE Game.Quantity > 0
ORDER BY Game.Quantity desc;
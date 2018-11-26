use GameDatabase

SELECT COUNT(Distinct GameID) AS GamesForConsole, Game.ConsoleID, Console.ConsoleName, SUM(Game.Quantity) AS TotalInventory
FROM Game
LEFT JOIN Console ON Console.ConsoleID = Game.ConsoleID
GROUP BY Game.ConsoleID, Console.ConsoleName

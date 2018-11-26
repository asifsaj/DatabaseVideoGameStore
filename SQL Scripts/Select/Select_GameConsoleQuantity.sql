USE GameDatabase

SELECT Game.GameName, Console.ConsoleName, Game.Quantity
FROM Game

left JOIN Console ON Console.ConsoleID = Game.ConsoleID

GROUP BY Game.GameName, Game.Quantity, Console.ConsoleName

ORDER BY Game.Quantity desc;

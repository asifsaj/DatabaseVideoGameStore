use GameDatabase
GO

CREATE VIEW PS4_Games AS
SELECT Game.GameName, Game.GamePrice, Console.ConsoleName, Game.Quantity, ESRB_Rating.RatingName
FROM Game
JOIN Console on Console.ConsoleID = Game.ConsoleID
JOIN ESRB_Rating on ESRB_Rating.RatingID = Game.RatingID
WHERE Console.ConsoleName = 'Playstation 4';
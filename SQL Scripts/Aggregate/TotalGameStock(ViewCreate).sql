use GameDatabase
Go

Create View TotalGamesInStock As
SELECT SUM(Game.Quantity) AS TotalGames
FROM Game
/*Aggregate*/
Use GameDatabase

SELECT COUNT(Distinct UserID) AS TotalUsers_withWithlist
FROM Wishlist

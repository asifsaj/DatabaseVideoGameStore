use GameDatabase

INSERT INTO Game (GameName, GameReleaseDate, Quantity, GamePrice, RatingID, ConsoleID)
VALUES (
	'Spider-Man',				/*Title*/
	'2018-09-07',				/*Release Date*/
	36,							/*Quantity*/
	59.88,						/*Price*/
	4,							/*Rating ID*/
	3							/*Console ID*/
	) ; 

	/*ESRB Rating IDs
	1	E
	3	E10+
	4	T
	5	M
	6	A
	7	RP
	*/

	/*Console IDs
	1	Switch
	2	Wii U
	3	PS4
	4	XBone
	5	PC
	6	Xbox 360
	7	PS3
	*/
USE GameDatabase

Create Table Company
(
	CompanyID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CompanyName nvarchar(255) NOT NULL,
	FoundedYear int, 
	AddressID int, 
	Website nvarchar(255),
);

Create Table Genre
(
	GenreID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GenreName nvarchar(255) NOT NULL,
	GenreDescription nvarchar(255),
);

Create Table Console
(
	ConsoleID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ConsoleName nvarchar(255) NOT NULL,
	ConsolePrice float,
	ConsoleReleaseDate date,
	CompanyID int, 
);

Create Table Game
(
	GameID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GameName nvarchar(255) NOT NULL,
	Price float,
	GameReleaseDate date,
	RatingID int, /*Can only have one ESRB rating*/
	GamePrice float,
	Quantity int DEFAULT 0,

	/*GenreID int NOT NULL,*/ 
	/*ConsoleID int NOT NULL,*/ /*These 3 aren't used as they are connected via Junction Table*/
	/*CompanyID int NOT NULL,*/ 
);

Create Table ESRB_Rating
(
	RatingID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	RatingName nvarchar(1) NOT NULL,
	RatingDescription nvarchar(255),
);

Create Table UserInformation
(
	UserID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	UserName nvarchar(50) NOT NULL,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	AddressID int,
);

Create Table AddressBook
(
	AddressID int IDENTITY(1,1) NOT NULL Primary Key,

	ApartmentNum varchar(20) DEFAULT NULL,
	Street nvarchar(255),
	City nvarchar(50),
	StateName nvarchar(2),
	Country varchar(50) DEFAULT 'United States of America',
	ZipCode varchar(10),

);

/*Junction Tables*/

Create Table Wishlist
(
	WishlistID int IDENTITY(1,1) NOT NULL primary key,
	UserID int, 
	GameID int,
);

Create Table GenreGameJunction
(
	GenreGameID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GameID int,
	GenreID int,
);

Create Table CompanyGameJunction
(
	CompanyGameID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GameID int,
	CompanyID int, 
);

Create Table ConsoleGameJunction
(
	ConsoleGameID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GameID int,
	ConsoleID int,
);

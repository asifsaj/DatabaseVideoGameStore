use GameDatabase

SELECT UserInformation.UserID,UserInformation.UserName, AddressBook.ApartmentNum, AddressBook.Street,AddressBook.City,AddressBook.StateName,AddressBook.Country,AddressBook.ZipCode
FROM UserInformation 
JOIN AddressBook on UserInformation.AddressID = AddressBook.AddressID;
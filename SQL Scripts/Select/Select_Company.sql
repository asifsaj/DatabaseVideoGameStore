use GameDatabase

SELECT Company.CompanyID, Company.CompanyName, Company.FoundedYear, AddressBook.City, AddressBook.Country, Company.Website
FROM Company
left JOIN AddressBook ON Company.AddressID = AddressBook.AddressID;
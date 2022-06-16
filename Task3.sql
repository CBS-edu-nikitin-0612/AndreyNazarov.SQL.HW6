--1
SELECT PhoneNumber, 
	(SELECT [Address] 
	FROM StaffDetails 
	WHERE StaffDetails.Id = StaffDetailsId) AS [Address]
FROM Staff

--2
SELECT PhoneNumber, 
	(SELECT DateOfBirth 
	FROM StaffDetails
	WHERE StaffDetails.Id = StaffDetailsId ) AS DateOfBirth
FROM Staff
WHERE StaffDetailsId in 
	(SELECT Id 
	FROM StaffDetails 
	WHERE MaritalStatus = 'Разведен')

--3
SELECT PhoneNumber,
	(SELECT DateOfBirth 
	FROM StaffDetails 
	WHERE StaffDetails.Id = StaffDetailsId) AS DateOfBirth
FROM Staff
WHERE PostionId in (SELECT Positions.Id FROM Positions WHERE Position = 'Менеджер')
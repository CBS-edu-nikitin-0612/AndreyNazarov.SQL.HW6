USE MyJoinsDB

CREATE TABLE StaffDetails
(
	Id INT NOT NULL CONSTRAINT PK_StaffDetails_Id PRIMARY KEY IDENTITY,
	MaritalStatus VARCHAR(20) NOT NULL,
	DateOfBirth Date NOT NULL,
	[Address] VARCHAR(200) NOT NULL
)

CREATE TABLE Positions
(
	Id INT NOT NULL CONSTRAINT PK_Positions_Id PRIMARY KEY IDENTITY,
	Position VARCHAR(30) NOT NULL,
	Salary DECIMAL(5,2)
)

CREATE TABLE Staff
(
	Id INT NOT NULL CONSTRAINT PK_Staff_Id PRIMARY KEY IDENTITY,
	[Name] VARCHAR(100) NOT NULL,
	PhoneNumber VARCHAR(20),
	PostionId INT NOT NULL CONSTRAINT FK_Staff_PostionId FOREIGN KEY REFERENCES Positions(Id),
	StaffDetailsId INT NOT NULL CONSTRAINT FK_Staff_StaffDetailsId FOREIGN KEY REFERENCES StaffDetails(Id)
)
GO

INSERT INTO StaffDetails 
VALUES ('��������', '01/01/1993', '� �������'),
('�����', '01/01/1990', '� �������'),
('��������', '01/01/1991', '� ����������')

INSERT INTO Positions
VALUES ('��������', 100),
('��������', 999),
('�������', 222)
GO

INSERT INTO Staff
VALUES ('����',  '123456789123', 1, 1),
('����', '654123789654', 3, 2),
('����', '963852741123', 2, 3)
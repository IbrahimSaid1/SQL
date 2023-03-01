CREATE TABLE Registration (
    AcNo INTEGER PRIMARY KEY,
    Fname VARCHAR(15)  NOT NULL,
    Lname VARCHAR(15)  NOT NULL,
    DOB DATE,
    RegDate DATE DEFAULT CONVERT(DATE, GETDATE()),
    CivilId INTEGER  NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('m', 'M', 'f', 'F')),
    GSM VARCHAR(8) UNIQUE,
    Openbal INTEGER CHECK (Openbal >= 50)
	);






CREATE TABLE Deposits (
    DNo INTEGER PRIMARY KEY,
    AcNo INTEGER FOREIGN KEY REFERENCES Registration(AcNo),
    DDate DATE DEFAULT GETDATE(),
    DAmount DECIMAL(10,2) NOT NULL,
    DLocation VARCHAR(10) NOT NULL
);






CREATE TABLE Withdrawals (
    WNo INTEGER PRIMARY KEY,
    AcNo INTEGER FOREIGN KEY REFERENCES Registration(AcNo),
    WDate DATE DEFAULT GETDATE(),
    WAmount DECIMAL(10,2) NOT NULL,
    WLocation VARCHAR(10) NOT NULL
);





CREATE PROCEDURE Reg_Add_Record(
	@AcNo  INTEGER ,
	@FName VARCHAR(15) ,
	@LName VARCHAR(15),
	@DOB DATE,
	@CivilID INTEGER ,
	@Gender CHAR(1),
	@GSM INTEGER,
	@OpenBal INTEGER)
AS
BEGIN
   declare @RegDate DATE = CONVERT(DATE, GETDATE())
    INSERT INTO Registration (AcNo, FName, LName, DOB,RegDate, CivilID, Gender, GSM, OpenBal)
    VALUES (@AcNo, @FName, @LName, @DOB,@RegDate, @CivilID, @Gender, @GSM, @OpenBal);
	
END;



EXEC Reg_Add_Record 12,'John','Doe','1990-01-01', 12345, 'M', '55512534', 90
EXEC Reg_Add_Record 14,'John','Doe','1990-01-01', 12345, 'M', '58912534', 90
EXEC Reg_Add_Record 15,'Ali','Ahmed','1990-01-02', 22225, 'M', '12345678', 80
EXEC Reg_Add_Record 16,'Said','Mohsin','1990-01-01', 11145, 'M','13467912',70
EXEC Reg_Add_Record 17,'Ahmed','Said','1990-01-01', 12344, 'M', '12457813',60
EXEC Reg_Add_Record 18,'Salim','Said','1990-01-01', 12345, 'M', '14161517',50
EXEC Reg_Add_Record 19,'Bader','Said','1990-01-01', 12344, 'M', '32659845',55





select * from Registration



CREATE PROCEDURE Reg_Update_OpenGSM (
      @AcNo INT,
      @GSM VARCHAR(20)
	  )
AS
BEGIN
    UPDATE Registration
    SET GSM = @GSM
    WHERE AcNo = @AcNo
END
EXEC Reg_Update_OpenGSM 12, '55512340'





CREATE PROCEDURE Reg_Del_Record
    @AcNo INT
AS
BEGIN
    DELETE FROM Registration
    WHERE AcNo = @AcNo
END
EXEC Reg_Del_Record 12


select * from Registration



CREATE PROCEDURE Deposit_Amt
  @DNo INT,
  @AcNo INT,
  @DDate DATE,
  @DAmount DECIMAL(10,2),
  @DLocation VARCHAR(10)
AS
BEGIN
 UPDATE Deposits
    SET DAmount = DAmount + @DAmount
    WHERE AcNo = @AcNo
  INSERT INTO Deposits (DNo, AcNo, DDate, DAmount, DLocation)
  VALUES (@DNo, @AcNo, @DDate, @DAmount, @DLocation)
END
EXEC Deposit_Amt 1001, 15, '2023-02-26', 500.00, 'Branch A'
EXEC Deposit_Amt 1001, 15, '2023-02-26', 600.00, 'Branch A'
EXEC Deposit_Amt 1001, 16, '2023-02-26', 700.00, 'Branch A'



SELECT * FROM Deposits




CREATE PROCEDURE Withdraw_Amt
  @WNo INT,
  @AcNo INT,
  @WDate DATE,
  @WAmount DECIMAL(10,2),
  @WLocation VARCHAR(10)
AS
BEGIN
UPDATE Withdrawals
        SET WAmount = WAmount - @WAmount
        WHERE AcNo = @AcNo
  INSERT INTO Withdrawals (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, @WDate, @WAmount, @WLocation)
END
EXEC Withdraw_Amt 1, 12345, '2023-02-26', 300.00, 'ATM'

SELECT * FROM Withdrawals
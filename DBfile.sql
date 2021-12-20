-- Please refer to system Design on Miro Board

-- Create Tables
CREATE TABLE Incident (
  incidentID CHAR(10) NOT NULL,
  userID VARCHAR(50) NULL,
  date DATE NULL,
  typeID VARCHAR(25) NULL,
  stateID VARCHAR(25) NULL,
  ipAddressID VARCHAR(25) NULL, 
  commentID VARCHAR(250) NULL,
  CONSTRAINT PK_Incident PRIMARY KEY(incidentID),
  CONSTRAINT FK_UserID FOREIGN KEY(userID) REFERENCES User(userid),
  CONSTRAINT FK_StateID FOREIGN KEY(stateID) REFERENCES State(stateid),
  CONSTRAINT FK_TypeID FOREIGN KEY(typeID) REFERENCES Type(typeID),
  CONSTRAINT FK_IPAddressID FOREIGN KEY(ipAddressID) REFERENCES IpAddress(ipAddressID),
  CONSTRAINT FK_CommentID FOREIGN KEY(commentID) REFERENCES Comment(commentID)
);

CREATE TABLE User (
  userID VARCHAR(50) NOT NULL,
  firstName VARCHAR(25) NULL,
  lastName VARCHAR(25) NULL,
  jobTitle VARCHAR(25) NULL,
  email VARCHAR(25) NULL,
  isAdmin VARCHAR(25) NOT NULL,
  CONSTRAINT PK_UserID PRIMARY KEY (userID)
);

CREATE TABLE State(
  stateID VARCHAR(25) NOT NULL,
  state VARCHAR(25) NULL,
  CONSTRAINT PK_StateID PRIMARY KEY (stateid)

);

CREATE TABLE Type(
  typeID VARCHAR(25) NOT NULL,
  type VARCHAR(25) NULL,
  CONSTRAINT PK_TypeID PRIMARY KEY (typeID)
);

CREATE TABLE IPAddress(
  ipAddressID VARCHAR(25) NOT NULL,
  ipAddress VARCHAR(25) NULL,
  userRecorded VARCHAR(25) NULL,
  CONSTRAINT PK_IPAddressID PRIMARY KEY (ipAddressID)
);

CREATE TABLE Comment(
  commentID VARCHAR(25) NOT NULL,
  comment VARCHAR(250) NOT NULL,
  CONSTRAINT PK_CommentID PRIMARY KEY (commentID)
);

-- Insert statments
INSERT INTO Incident
  Value('001', '001', '12/1/21', 'Open','Phishing', '21.20.105.215' 'Jazz - Normal Phishing');
  Value('002', '002', '12/3/21', 'Open', 'Password Attack', '125.109.244.216', 'Viren - Credential Stuffing');
  Value('003', '003', '12/2/21', 'Closed', 'Phishing', '92.94.245.112', 'Andy - Spear Phishing');
  Value('004', '004', '12/13/21', 'Open', 'Phishing', '124.49.16.90', 'Arham - Spear Phishing');
  Value('005', '005', '12/10/21', 'Open', 'Insider Threat', '28.115.129.53', 'Jazz - In process');
  Value('006', '006', '12/1/21', 'Open', 'Phishing', '10.131.230.218', 'Viren - Normal Phishing');
  Value('007', '007', '12/18/21', 'Closed', 'Malware Attack', '132.19.107.232', 'Andy - Virus');
  Value('008', '008', '12/5/21', 'Closed', 'Malware Attack', '229.238.81.99', 'Arham - Virus');

INSERT INTO User
  Value('001', 'Henry', 'Bruce', 'Police Officer', 'niisan@bentsgolf.com', 'Jazz');
  Value('002', 'Dacey', 'Canmore', 'Doctor', 'tenbucks@boranora.com', 'Viren');
  Value('003', 'Jarl', 'Stuart', 'Journalist', 'dccu9tpq@yt-google.com', 'Andy');
  Value('004', 'Malik', 'Dunkeld', 'Healthcare Assistant','tokd0o@prcei.site', 'Arham');
  Value('005', 'Tomos', 'Gough', 'Anaesthetist','jagrag@johonmasalalu.com', 'Jazz');
  Value('006', 'Tess', 'Stephens', 'Film Director', 'savage6608@googl.win', 'Viren');
  Value('007', 'Jedd', 'Power', 'Clerk','2kevlar01@reacc.me', 'Andy');
  Value('008', 'Kim', 'Fisher', 'Receptionist','james3700@asifboot.com', 'Arham');

-- Update statments
UPDATE Incident
  Set StateId = 'Closed'
  Where Date = '12/1/21';

UPDATE User
  Set Admin = 'Jazz'
  Where Admin = 'Arham';

-- Delete statement
DELETE FROM Incident
  Where Userid = '002';

DELETE FROM User
  Where Userid = '002';

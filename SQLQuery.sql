USE TSQLV4;
GO

-- Create table Project-TheWalkingDead

CREATE TABLE Project.TheWalkingDead
(
  empid INT NOT NULL IDENTITY,
  certificationid INT NULL,
  annualrenewaldate date NOT NULL,
  traininghours INT NOT NULL,
  CONSTRAINT PK_TheWalkingDead PRIMARY KEY(empid)
);
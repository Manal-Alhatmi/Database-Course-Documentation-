CREATE TABLE Department (
    DNum INT PRIMARY KEY,
    DName VARCHAR(50),
    Location VARCHAR(50)
);


CREATE TABLE Employee (
    SSN INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender CHAR(1),
    DNum INT,
    SupervisorSSN INT,
    FOREIGN KEY (DNum) REFERENCES Department(DNum),
    FOREIGN KEY (SupervisorSSN) REFERENCES Employee(SSN)
);

CREATE TABLE Project (
    PNum INT PRIMARY KEY,
    PName VARCHAR(50),
    Location VARCHAR(50),
    City VARCHAR(50),
    DNum INT,
    FOREIGN KEY (DNum) REFERENCES Department(DNum)
);


CREATE TABLE Works_On (
    SSN INT,
    PNum INT,
    PRIMARY KEY (SSN, PNum),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (PNum) REFERENCES Project(PNum)
);


CREATE TABLE Manages (
    SSN INT,
    DNum INT,
    HiringDate DATE,
    PRIMARY KEY (SSN, DNum),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (DNum) REFERENCES Department(DNum)
);


CREATE TABLE Dependent (
    DependentID INT PRIMARY KEY,
    SSN INT,
    DName VARCHAR(50),
    Gender CHAR(1),
    BirthDate DATE,
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);

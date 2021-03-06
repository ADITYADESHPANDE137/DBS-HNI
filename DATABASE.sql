SHOW DATABASES;
USE DBS;
CREATE TABLE BANKING_INFO(BANK_ID INT PRIMARY KEY,BANKING_NAME VARCHAR(20),ACCOUNT_BALANCE LONG INT,WORK_MANAGER_ID INT );

INSERT INTO BANKING_INFO VALUES(123,'SUNIL BHAT',20000009,101);
INSERT INTO BANKING_INFO VALUES(124,'SONIYA MEHTA',30000009,101);
INSERT INTO BANKING_INFO VALUES(125,'RAJES SHRMA',20000,102);
INSERT INTO BANKING_INFO VALUES(126,'MUKESH VERMA',50000087,102);
INSERT INTO BANKING_INFO VALUES(127,'JHON SNOW',20674678,103);
INSERT INTO BANKING_INFO VALUES(128,'MADY SINGH',25340009,103);
INSERT INTO BANKING_INFO VALUES(129,'SALMAN REDDY',27950005,104);
INSERT INTO BANKING_INFO VALUES(130,'KUMAR JAIN',46780009,104);

SELECT * FROM BANKING_INFO;


CREATE TABLE WORK_MANAGER2(WORK_MANAGER_ID INT PRIMARY KEY,WORK_MANAGER_NAME VARCHAR(20),BANK_ID INT,FOREIGN KEY(WORK_MANAGER_ID) REFERENCES BANKING_INFO(BANK_ID) ON DELETE SET NULL);

SELECT * FROM WORK_MANAGER;



INSERT INTO WORK_MANAGER VALUES(101,'VEENITHA SAI',123);
INSERT INTO WORK_MANAGER VALUES(102,'NIKHIL RAJ',125);
INSERT INTO WORK_MANAGER VALUES(103,'SOMESH RAO',127);
INSERT INTO WORK_MANAGER VALUES(104,'ANIKET REDDY',128);

ALTER TABLE BANKING_INFO
ADD FOREIGN KEY(WORK_MANAGER_ID)
REFERENCES BANKING_INFO(BANK_ID)
ON DELETE SET NULL;


ALTER TABLE BANKING_INFO
ADD FOREIGN KEY(BANK_ID)
REFERENCES WORK_MANAGER(WORK_MANAGER_ID)
ON DELETE SET NULL;


SELECT BANKING_NAME,BANK_ID,WORK_MANAGER_ID,ACCOUNT_BALANCE FROM BANKING_INFO
WHERE ACCOUNT_BALANCE>20000000;

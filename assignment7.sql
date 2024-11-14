-- Q1
ALTER TABLE Persons
ADD DOB DATE;
desc persons;

select * from Persons;

-- Q2
DELIMITER &&
CREATE FUNCTION CalculateAge(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, dob, CURDATE());
    RETURN age;
END &&
DELIMITER ;

SELECT Fname,CalculateAge(dob) AS age FROM Persons;

-- Q3
SELECT ID,Fname,dob,CalculateAge(dob) AS age FROM Persons;

-- Q4
SELECT *,length(country_name) AS countrynamelenght From country;

-- Q5
SELECT *, LEFT(country_name,3) As Three FROM Country;

-- Q6
SELECT country_name,lower(country_name) AS LOWER,upper(country_name) AS UPPER FROM Country;

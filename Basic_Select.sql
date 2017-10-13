 
--1.	Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
Select * from CITY where COUNTRYCODE='USA' and POPULATION>100000;

--2.	Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.
Select NAME from CITY where COUNTRYCODE='USA' and POPULATION>120000

--3.	Query all columns (attributes) for every row in the CITY table.
Select * from CITY;

--4.	Query all columns for a city in CITY with the ID 1661.
select * from CITY where ID=1661;
	
--5.	Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * from CITY where COUNTRYCODE='JPN'

--6.	Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select NAME from CITY where COUNTRYCODE='JPN';

--7.	Query a list of CITY and STATE from the STATION table.
select CITY, STATE from STATION

--8.	Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.
Select distinct(CITY) from STATION where ID%2=0;

--9.	Let  be the number of CITY entries in STATION, and let  be the number of distinct CITY names in STATION; query the value of  from STATION. In other words, find the difference between the total number of CITYentries in the table and the number of distinct CITY entries in the table.
select a.c1-b.c2 from (Select count(*) as c1 from STATION) as a, (Select count(distinct(CITY)) as c2 from STATION) as b;

--10.	Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
Select CITY, Length(CITY) from STATION order by LENGTH(CITY) ASC , CITY ASC limit 1;
Select CITY, Length(CITY) from STATION order by LENGTH(CITY) DESC , CITY ASC limit 1;
	
--11.	Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT distinct(CITY) from STATION where CITY RLIKE '^[a,e,i,o,u].*';

--12.	Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct(CITY) from STATION where CITY RLIKE '.[a,e,i,o,u,A,E,I,O,U]$'

--13.Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
Select distinct(CITY) from STATION where CITY RLIKE '^[a,e,i,o,u,A,E,I,O,U].*[a,e,i,o,u,A,E,I,O,U]$';

--14. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT distinct(CITY) from STATION where CITY NOT RLIKE '^[a,e,i,o,u].*';

--15 Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct(CITY) from STATION where CITY NOT RLIKE '.[a,e,i,o,u,A,E,I,O,U]$'

--16 Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT distinct(CITY) from STATION where CITY NOT RLIKE '^[a,e,i,o,u].*' or CITY not RLIKE '.[a,e,i,o,u,A,E,I,O,U]$';

--17 Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT distinct(CITY) from STATION where CITY NOT RLIKE '^[a,e,i,o,u].*' and CITY not RLIKE '.[a,e,i,o,u,A,E,I,O,U]$';

--18 Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
Select Name from STUDENTS where Marks>75 order by RIGHT(Name,3), ID;

--19 Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
Select name from Employee order by name;

--20 Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10  months. Sort your result by ascending employee_id.
Select name from Employee where salary>2000 and months<10 order by employee_id;
# first convert all your data files into csv format if they are in other format

# second find the path of your SQL directory from where you'll import data in your mysql database

SHOW VARIABLES LIKE 'secure_file_priv';
# after knowing the path copy paste the file in it

create database Students;

use Students;

# 1) Country_info Table import
CREATE TABLE Country_info (
	    id int
       ,unemp double
       ,wage double
       ,distance double
       ,region text
       ,avg_county_tuition double
);	

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CountryInfo.csv'
INTO TABLE Country_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


# 2) Academic info Table Import
CREATE TABLE Academic_info (
        id int
       , academic_score double
       , student_tuition int
       , education int
);	

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/student_academic_info.csv'
INTO TABLE Academic_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


#3) Student_family_details Table Import
Create Table Student_family_detials (
        id int
        ,fcollege text
        ,mcollege text
        ,home text
        ,urban text
        ,income text
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/student_family_details.csv'
INTO TABLE Student_family_detials
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

# 4) Student personal Details Table import
Create table Studen_personal_details (
        id int
        ,gender text
        ,dob date
        ,ethnicity text
        ,academic_id int
        ,country_id int
        ,family_id int
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/student_personal_details.csv'
INTO TABLE Studen_personal_details
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
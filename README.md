# ( SQL PORTFOLIO PROJECT )

## Table of contents

- [Overview](#overview)
  - [Dataset](#dataset)
  - [Root Cause Analysis Process](#root-cause-analysis-process)
  - [Key Insights](#key-insights)
  - [Built with](#built-with)


## Overview
A portfolio project involving a detailed analysis of 37,997 high school/college student records to showcase key insights through the aid of effective visualizations aimed at evaluating the factors affecting student's academic performance in high school and colleges in the USA.

## Dataset

- This dataset contains four csv files of students data about the _country info, student academic info, student family details_ and _student personal details_ respectively for 37997 student records.

- All column variables throughout the dataset includes :

| variables | Details |
| --------------------- | ---------------------- |
| gender | factor indicating gender |
| ethnicity | factor indicating ethnicity (African-American, Hispanic, Asian or other) |
| academic_score | student’s academic score throughout high school and college |
| student_tuition | cost of tuition for the student |
| education | the years of education the student has received |
| fcollege | factor. Is the father a college graduate? |
| mcollege | factor. Is the mother a college graduate? |
| home | factor. Does the family own their home? |
| urban | factor. Is the school in an urban area? |
| unemp | county unemployment rate in 2020 |
| income | high or low income household based on county average |
| wage | state hourly wage in manufacturing in 1980 |
| distance |  distance from 4-year college (in 10 miles) 
| region | factor indicating region (West, East or other) |
| avg_county_tuition | average state 4-year college tuition (in 1000 USD) |


## Root Cause Analysis Process
To ascertain a root cause analysis, we attempted to answer the followimg questions with the newly created tables

1. Overview of Academic Scores from Students
 - a) highest Academic Score by any Student
 - b) lowest Academic Score by any Student
 - c) Average Academic Score by any Student

2. Total Students distributed by their Grade based on their Academic Scores
 - a) Number of students who passed and who failed
 - b) Percentage of students who passed and who passed

3. Ethnicity wise Average Academic Scores and Unemployment Rate
 - a) Total Students Ethnicity Wise and their Average Academic Score
 - b) Total Students Ethnicity Wise and Their Average Unemployment Rate

4. Birth Year wise Student's Average AcademicScore 

5. Region wise Average amount spend on CollegeFees and Respective Average Academic Scores

6. Region wise Average distance Travel through college and Respective Average Academic Scores

7. Income group wise total tuition Fees Spend and Respective Average Academic Scores

8. Total Students distributed by gender and Their Average Academic Scores

9. Academic Scores based on Parents Educations
 - a) Average Academic Scores of Total Students whose any one of the parents is qualified
 - b) Average Academic Scores of Total Students whose both the parents are not qualified
 


## Key Insights

- A plot of academic scores for all students shows a symmetrical distribution	

- The African American students are the least represented while the 'other' category of students are the most represented in our student's sample.						
- Average number of years spent by students in school is 14 years for students of all ethnicities.	
						
- There was no considerable effect of a student's age on their academic scores.						

- Students from high income homes pay on average slightly higher student tuition (0.87% higher) than those from low income homes.
						
- There is no considerable effect of parents education on the education of the student						

- Student whose either one of the parents educated perform better in academic scores and they study more than 14 years of Education						
- Students with both parents not educated perform the least in academic scores and they study less than 14 years of education 
					
- the west region is provides cheaper tuitionfees compare to east and others regions
- Travel distance in west region being the longest and in east region being shortest through college 
- but not much difference in Academic scores across all regionss

- Male students on average have (0.19% higher) academic scores compare to than female students	

- In terms of academic performance by ethnicity,
- Asain = 51.98 , afam = 47.69 , hispanic = 49.24 , others groups = 52.09
- others groups Academic performance is slightly better than Asion and following other ethnic groups i.e hispanic and then afam in the country.

- More students have an academic score of 51% than any other score.					

- Lowest academic score of any student is 29% and highest of any student is 73%.

- 1980 students i.e 53.9% of all students passed (scored greater than or equal to 50) while 1718 students i.e 46.9% of all students failed (scored less than 50).

![image1](https://user-images.githubusercontent.com/88894128/209207928-053987ee-5ffd-4d7f-b5ac-517a2037b9f0.png)


### Built with

- MYSQL
- EXCEL Visualization
- Pivot tables, SQL Aggregations

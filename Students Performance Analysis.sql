use students;

# 1) Ethnicity wise Average Academic Scores and Unemployment Rate

# a) Total Students Ethnicity Wise and their Average Academic Score
select 
count(distinct s.id) as Total_Students,  
s.ethnicity,
Round(AVG(i.academic_score),2) as AVG_AcademicScore
from student_personal_details as s
 join academic_info as i 
on s.academic_id = i.id
group by s.ethnicity;

# b) Total Students Ethnicity Wise and Their Average Unemployment Rate
select 
count(distinct s.id) as Total_Students, 
s.ethnicity,
Round(AVG(ci.unemp),2) as AVG_unemploymentRate
from student_personal_details as s
inner join country_info as ci
on s.country_id = ci.id
group by s.ethnicity
order by Total_Students;


# 2) Birth Year wise Student's Average AcademicScore
SELECT  
  EXTRACT(YEAR FROM s.dob) AS BirthYear,
  ROUND(AVG(i.academic_score), 2) AS AVG_AcademicScore
FROM student_personal_details AS s
LEFT JOIN academic_info AS i 
  ON s.academic_id = i.id 
GROUP BY BirthYear
ORDER BY BirthYear;

# 3) Region wise Average amount spend on CollegeFees and Respective Average Academic Scores
Select 
ci.region,
Round(AVG(ci.AVG_CollegeFees),2) as AVG_CollegeFees,
Round(AVG(ai.academic_score),2) as AVG_AcademicScores
From country_info as ci
LEFT JOIN student_personal_details AS sp
ON sp.country_id = ci.id 
left join academic_info as ai
ON ci.id = ai.id
Group By region;

# 4) Region wise Average distance Travel through college and Respective Average Academic Scores
Select 
ci.region,
Round(AVG(ci.distance),2) as AVG_distance,
Round(AVG(ai.academic_score),2) as AVG_AcademicScores
From country_info as ci
LEFT JOIN student_personal_details AS sp
ON sp.country_id = ci.id 
left join academic_info as ai
ON ci.id = ai.id
Group By region;

# 5) Income group wise total tuition Fees Spend and Respective Average Academic Scores
SELECT
  sf.income,
  ROUND(SUM(ai.student_tuition), 0) AS Total_TuitionFees,
  Round(AVG(ai.academic_score),2) as AVG_AcademicScore
FROM student_family_details AS sf
LEFT JOIN student_personal_details AS sp
  ON sf.id = sp.family_id 
LEFT JOIN academic_info AS ai
  ON sp.academic_id = ai.id
GROUP BY sf.income;

# 6) Total Students distributed by gender and Their Average Academic Scores
select 
count(distinct s.id) Total_Students, 
s.gender,
Round(AVG(i.academic_score),2) as AVG_AcademicScore
from student_personal_details as s
left join academic_info as i 
on s.id = i.id
group by s.gender;

# 7)Total Students distributed by their Grade based on their Academic Scores
select
count(id) Total_Students,
case when academic_score < 40 then "Fail"
     when academic_score < 50 then "Pass"
     when academic_score < 60 then "average"
     when academic_score < 70 then "good"
     else "Excellent"
     END as "Result"
from academic_info
group by Result;


# 8) Academic Scores based on Parents Educations

# a) Average Academic Scores of Total Students whose any one of the parents is qualified
SELECT
  COUNT(DISTINCT sp.id) AS Total_students,
  ROUND(AVG(ai.academic_score), 2) AS AVG_AcademicScore
FROM student_family_details AS sf
LEFT JOIN student_personal_details AS sp
  ON sp.family_id = sf.id
LEFT JOIN academic_info AS ai
  ON sp.academic_id = ai.id
WHERE sf.fcollege = 'yes' or sf.mcollege = 'yes';

# b) Average Academic Scores of Total Students whose both the parents are not qualified
SELECT
  COUNT(DISTINCT sp.id) AS Total_students,
  ROUND(AVG(ai.academic_score), 2) AS AVG_AcademicScore
FROM student_family_details AS sf
LEFT JOIN student_personal_details AS sp
  ON sp.family_id = sf.id
LEFT JOIN academic_info AS ai
  ON sp.academic_id = ai.id
WHERE sf.fcollege = 'no' AND sf.mcollege = 'no';


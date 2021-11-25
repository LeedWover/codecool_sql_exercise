
--4. Feladat

delete from reviews WHERE  id= '1';
UPDATE reviews SET mark = '4' WHERE  id= '1';


--5. Feladat 

--a:
select DISTINCT name,description, materials, is_team_project , type from projects where course_id = '2';


--b:

select * FROM projects where id = 2

--c:

SELECT DISTINCT  course_name, join_date, students.name , nickname,city,dOB,hobby,email FROM projects
INNER JOIN courses ON courses.id = projects.course_id
INNER JOIN students ON students.id = projects.student_id
ORDER BY course_name;

--d:

SELECT DISTINCT students.name, projects.name ,mark, date_of_review,review_description, reviewer.name FROM reviews
INNER JOIN students AS reviewer ON (reviews.reviewer_id = reviewer.id)
INNER JOIN students ON students.id = reviews.student_id
LEFT JOIN projects ON projects.id =  reviews.project_id
ORDER BY students.name


--e:

SELECT students.name , ROUND(AVG(mark),2) AS avreage,
CASE 
WHEN ROUND(AVG(mark),2) > 3 THEN 'haladó'
ELSE 'megfontolva haladó'
END AS grade  
FROM reviews
INNER JOIN students ON (students.id = reviews.reviewer_id)
GROUP BY students.name,student_id







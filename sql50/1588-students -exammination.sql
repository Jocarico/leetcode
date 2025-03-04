-- Write your PostgreSQL query statement below
SELECT stud.student_id, stud.student_name, subj.subject_name, COUNT(exa.subject_name) as attended_exams FROM Students as stud
CROSS JOIN Subjects as subj 
LEFT JOIN Examinations as exa ON subj.subject_name = exa.subject_name and stud.student_id = exa.student_id
GROUP BY stud.student_id, stud.student_name, subj.subject_name
ORDER BY stud.student_id, subj.subject_name

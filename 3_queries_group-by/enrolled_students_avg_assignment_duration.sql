SELECT students.name as student_name, avg(assignment_submissions.duration) AS assignment_submissions_count 
FROM students
JOIN assignment_submissions ON assignment_submissions.student.id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
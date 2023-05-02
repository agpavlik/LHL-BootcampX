SELECT cohorts.name as cohort_name, count(assignment_submissions.*) AS assignment_submissions_count 
FROM cohorts
JOIN assignments_submissions ON assignments_submissions.student.id = students.id
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY assignment_submissions_count DESC;
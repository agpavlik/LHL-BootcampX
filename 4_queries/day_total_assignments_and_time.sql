--# Get each day with the total number of assignments and the total duration of the assignments.
SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

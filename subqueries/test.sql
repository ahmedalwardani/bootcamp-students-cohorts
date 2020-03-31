-- SELECT avg(total_students) AS average_students
-- FROM(
-- SELECT count(students) AS total_students
--   FROM students
--     JOIN cohorts ON cohorts.id = cohort_id
--   GROUP BY cohorts
-- ) AS totals_table

SELECT assignments.name
FROM assignments
WHERE id NOT IN
(
  SELECT assignment_id
FROM assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel'
);
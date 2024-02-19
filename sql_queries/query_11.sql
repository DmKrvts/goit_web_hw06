-- Середній бал, який певний викладач ставить певному студентові.

SELECT s.student_name, p.professor_name, sb.subject_name, AVG(CAST(grade AS FLOAT)) AS avg_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
JOIN professors p ON p.id = sb.professors_id
WHERE p.id = 2 and s.id = 2;
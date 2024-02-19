-- Знайти 5 студентів із найбільшим середнім балом з усіх предметів.

SELECT student_id, s.student_name, AVG(CAST(grade AS FLOAT)) AS avg_grade
FROM grades g
JOIN students s ON s.id = g.student_id
GROUP BY student_id
ORDER BY avg_grade DESC
LIMIT 5;
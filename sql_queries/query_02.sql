-- Знайти студента із найвищим середнім балом з певного предмета.

SELECT student_id, s.student_name, sb.subject_name, AVG(CAST(grade AS FLOAT)) AS avg_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sb ON sb.id = g.subject_id
WHERE subject_id = 2
GROUP BY student_id
ORDER BY avg_grade DESC
LIMIT 1;
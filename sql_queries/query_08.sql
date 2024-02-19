-- Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT p.professor_name, s.subject_name, AVG(CAST(g.grade AS FLOAT)) AS avg_grade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
JOIN professors p ON s.professors_id = p.id
WHERE p.id = 1;
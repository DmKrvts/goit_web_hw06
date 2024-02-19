-- Знайти середній бал на потоці (по всій таблиці оцінок).

SELECT AVG(CAST(grade AS FLOAT)) AS avg_grade
FROM grades;
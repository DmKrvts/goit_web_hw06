-- Знайти середній бал у групах з певного предмета.

SELECT gr.group_name, AVG(CAST(g.grade AS FLOAT)) AS avg_grade
FROM grades AS g
JOIN students AS s ON g.student_id = s.id
JOIN groups AS gr ON s.group_id = gr.id
JOIN subjects AS sub ON g.subject_id = sub.id
WHERE sub.id = 2
GROUP BY gr.group_name;
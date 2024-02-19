-- Оцінки студентів у певній групі з певного предмета на останньому занятті.

SELECT s.student_name, gr.group_name, g.grade, g.date_of
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
JOIN groups gr ON s.group_id = gr.id
WHERE gr.id = 2 AND sb.id = 2
ORDER BY g.date_of DESC
LIMIT 1;
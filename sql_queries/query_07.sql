-- Знайти оцінки студентів у окремій групі з певного предмета.

SELECT g.student_id, s.student_name, sb.subject_name, g.grade
FROM grades g
JOIN students s ON g.student_id = s.id
JOIN subjects sb ON g.subject_id = sb.id
JOIN groups gr ON s.group_id = gr.id
WHERE gr.id = 1 AND sb.id = 1;
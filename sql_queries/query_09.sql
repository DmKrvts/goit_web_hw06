-- Знайти список курсів, які відвідує студент.
 
SELECT s.student_name, gr.group_name, sb.subject_name
FROM students s
JOIN groups gr ON s.group_id = gr.id
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
WHERE s.id = 3
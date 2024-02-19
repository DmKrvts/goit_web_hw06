-- Table: students
DROP TABLE IF EXISTS students;
-- CREATE TABLE IF NOT EXISTS students (
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(255) UNIQUE NOT NULL,
    group_id INTEGER,
    FOREIGN KEY (group_id) REFERENCES groups (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Groups
DROP TABLE IF EXISTS groups;
-- CREATE TABLE IF NOT EXISTS students (
CREATE TABLE groups (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  group_name VARCHAR(30) UNIQUE NOT NULL
);

-- Table: Professors
DROP TABLE IF EXISTS professors;
-- CREATE TABLE IF NOT EXISTS professors (
CREATE TABLE professors(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  professor_name VARCHAR(70) UNIQUE NOT NULL
);

-- Table: Subjects
DROP TABLE IF EXISTS subjects;
-- CREATE TABLE IF NOT EXISTS Subjects(
CREATE TABLE subjects(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  subject_name VARCHAR(50) UNIQUE NOT NULL,
  professors_id INTEGER,
  FOREIGN KEY (professors_id) REFERENCES professors (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Table: Grades
DROP TABLE IF EXISTS grades;
-- CREATE TABLE IF NOT EXISTS grades(
CREATE TABLE grades(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER NOT NULL,
  subject_id INTEGER NOT NULL,
  grade VARCHAR(10) NOT NULL,
  date_of DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (subject_id) REFERENCES subjects (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
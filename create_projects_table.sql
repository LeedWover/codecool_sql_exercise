CREATE TYPE proj_type AS ENUM ('exercise', 'tutorial');

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    student_id INT,
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(id),
    course_id INT,
    CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES courses(id),
    "name" VARCHAR(50),
    description VARCHAR(255),
    materials VARCHAR(255),
    is_team_project BOOLEAN,
    "type" proj_type
);






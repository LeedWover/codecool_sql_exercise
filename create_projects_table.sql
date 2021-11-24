CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    student_id INT,
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES Students(id),
    project_name: VARCHAR(50),
    
)
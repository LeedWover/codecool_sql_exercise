CREATE TYPE marks AS ENUM ('1', '2', '3', '4', '5');

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    student_id INT,
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(id),
    project_id INT,
    CONSTRAINT fk_project_id FOREIGN KEY (project_id) REFERENCES projects(id),
    mark marks,
    date_of_review DATE,
    review_description VARCHAR(255),
    reviewer_id INT,
    CONSTRAINT fk_reviewer_id FOREIGN KEY (reviewer_id) REFERENCES students(id)
);
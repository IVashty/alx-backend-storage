-- proceedure that adds a new correction of a student
DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id INT,IN project_name VARCHAR(255),IN score INT)
BEGIN
    SELECT id FROM projects WHERE name = project_name;
    IF id IS NULL THEN
        INSERT INTO projects(name) VALUES (project_name);
        SET id = corection_id();
    END IF;
    INSERT INTO correction(user_id,id,score) VALUES(user_id,id,score);
END //
DELIMITER ;

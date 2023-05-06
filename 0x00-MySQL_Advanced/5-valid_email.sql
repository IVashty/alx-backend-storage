-- create trigger that triggers that resets the attrinute valid_email only when the email has been changed.
DELIMITER //
CREATE TRIGGER reset_email
BEFORE UPDATE ON users
FOR EACH ROW
    BEGIN
        IF OLD.email != NEW.mail THEN
            SET NEW.valid_email = 0;
        END IF;
    END//
DELIMITER;

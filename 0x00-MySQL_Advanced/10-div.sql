-- function that divides and returns the 1st by the 2nd number or returns 0 if the 2nd number is equals to 0
DELIMITER //
CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS SafeDiv(a/b)
BEGIN
    IF b = 0 THEN
        RETURN 0;
    else
        RETURN (a/b);
    END IF;
END;
DELIMITER //

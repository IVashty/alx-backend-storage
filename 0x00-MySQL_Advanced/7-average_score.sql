-- stored proceedure that computes and store average score of student(which can be decimal)
DELIMITER $$
CREATE PROCEEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    UPDATE users
    SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id;
END $$
DELIMITER ;

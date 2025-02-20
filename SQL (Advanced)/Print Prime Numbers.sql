/* Language MYSQL */

DELIMITER //

CREATE PROCEDURE FindPrimes()
BEGIN
    DECLARE counter INT;
    DECLARE k INT;
    DECLARE n INT;
    DECLARE result TEXT DEFAULT '';
    
    SET n = 2;
    
    prime_loop: WHILE n <= 1000 DO
        SET counter = 0;
        SET k = FLOOR(n/2);
        
        divisor_loop: BEGIN
            DECLARE i INT DEFAULT 2;
            
            WHILE i <= k DO
                IF MOD(n, i) = 0 THEN
                    SET counter = 1;
                    LEAVE divisor_loop;
                END IF;
                SET i = i + 1;
            END WHILE;
        END divisor_loop;
        
        IF counter = 0 THEN
            SET result = CONCAT(result, n, '&');
        END IF;
        
        SET n = n + 1;
    END WHILE;

    IF LENGTH(result) > 0 THEN
        SET result = LEFT(result, LENGTH(result) - 1);
    END IF;
    
    SELECT result;
END //

DELIMITER ;
CALL FindPrimes();

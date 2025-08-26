/*<info databaseType="2" serverAlias="NexOpsMySQL-classicmodels" isFunction="0" isNested="0"></info>*/
DELIMITER $$

USE `classicmodels`$$

CREATE PROCEDURE `MySQL_Test_Alex_TestSuccess`()
BEGIN
    /*
        Creator: Alex
        Param: none

        Revisions:
            - 20250826@Alex: Initialize
    */
    SELECT 'Test OK' AS Result, NOW() AS ExecutedAt;
END$$

DELIMITER ;

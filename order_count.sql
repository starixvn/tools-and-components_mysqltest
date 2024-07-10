/*<info databaseType="2" serverAlias="NexOpsMySQL-classicmodels" executers="deployer" isFunction="1"></info>*/
USE `classicmodels`;
DROP function IF EXISTS `order_count`;

DELIMITER $$
USE `classicmodels`$$
CREATE FUNCTION `order_count`(cusNumber INT) RETURNS int
    READS SQL DATA
BEGIN
/*
	Creator: Larry
	Param:

	Revisions:
		- 20240710@Larry: Initialize
	
*/
	SET @count = 0;
    
	SELECT COUNT(*) into @count
    FROM classicmodels.orders
    WHERE customerNumber = cusNumber; 
    
	RETURN @count;
END$$

DELIMITER ;
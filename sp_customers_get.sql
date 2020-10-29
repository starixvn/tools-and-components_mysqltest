/*<info databaseType="2" serverAlias="NexOpsMySQL-classicmodels" executers="deployer" isFunction="0"></info>*/
DELIMITER $$
USE `classicmodels`$$
CREATE PROCEDURE `customers_get`(IN cusNumber INT)
BEGIN
/*
	Creator: Larry
	Param:

	Revisions:
		- 20201027@Larry: Initialize hehe
	
*/
	SELECT *
    FROM classicmodels.customers
    WHERE customerNumber = cusNumber;
    
    SELECT *
    FROM orders
    WHERE customerNumber = cusNumber;    
    
END$$

DELIMITER ;


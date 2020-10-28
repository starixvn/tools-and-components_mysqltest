/*<info databaseType="2" serverAlias="NexOpsMySQL-classicmodels" executers="deployer" viewers="" isFunction="0" isNested="0"></info>*/
DELIMITER $$
USE `classicmodels`$$
CREATE PROCEDURE `customers_get`(IN cusNumber INT)
BEGIN
/*
	Creator: Larry
	Param:

	Revisions:
		- 20201027@Larry: Initialize
	
*/
	SELECT *
    FROM classicmodels.customers
    WHERE customerNumber = cusNumber;
END$$

DELIMITER ;


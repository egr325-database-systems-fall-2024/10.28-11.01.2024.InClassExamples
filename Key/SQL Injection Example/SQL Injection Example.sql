use ap;

SET @username = 'haki';
SET @password = 'wrong password';-- 
-- SET @password = 'any string'' OR ''x''=''x';

SET @sql = CONCAT('SELECT * FROM users WHERE username=''', @username, ''' AND password=''', @password, ''''); 
SELECT @sql;
     
PREPARE dynamic_statement FROM @sql;
EXECUTE dynamic_statement;
SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA='tianchi' 
    AND TABLE_NAME='train_set' and column_name like "%recent%" ;
    


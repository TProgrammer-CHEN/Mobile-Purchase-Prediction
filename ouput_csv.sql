select * from train_set into outfile 
'C:/data science/race and projects/tianchi/train_set.csv'
FIELDS ENCLOSED BY '"' 
TERMINATED BY ',' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';

select * from test_set into outfile 
'C:/data science/race and projects/tianchi/test_set.csv'
FIELDS ENCLOSED BY '"' 
TERMINATED BY ',' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';
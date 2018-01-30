create table user_train (select * from user_data where date(time)!=date("2014-12-18") and date(time)!=date("2014-12-12") 
and datediff(date("2014-12-18 0"),date(time))<=28);
create table user_test (select * from user_data where date(time)!=date("2014-12-12") 
and datediff(date("2014-12-19 0"),date(time))<=28);
 
alter table user_train add hours int;
alter table user_test add hours int;

update user_train set hours=datediff(date("2014-12-18 0"),date(time))*24-hour(time);
update user_test set hours=datediff(date("2014-12-19 0"),date(time))*24-hour(time);

create table train_s as select * from ui_buy natural left join user_feature_train 
natural left join item_feature_train natural left join cat_feature_train;

create table test_s as select * from ui_buy_test 
natural left join user_feature natural left join item_feature natural left join cat_feature;

create table train_set as select * from train_s 
left outer join uc_feature_train using(user_id,item_category) 
left outer join ui_feature_train using(user_id,item_id);

create table test_set as select * from test_s 
left outer join uc_feature using(user_id,item_category) 
left outer join ui_feature using(user_id,item_id);

alter table train_set add user_12rate float(32), add user_13rate float(32),add user_14rate float(32),
add cat_12rate float(32),add cat_13rate float(32),add cat_14rate float(32);

update train_set set user_14rate = user_bh4_28d/user_bh1_28d;
update train_set set user_13rate = user_bh3_28d/user_bh1_28d;
update train_set set user_12rate = user_bh2_28d/user_bh1_28d;
update train_set set cat_14rate = if(category_bh1_28d=0,0,category_bh4_28d/category_bh1_28d);
update train_set set cat_13rate = if(category_bh1_28d=0,0,category_bh3_28d/category_bh1_28d);
update train_set set cat_12rate = if(category_bh1_28d=0,0,category_bh2_28d/category_bh1_28d);

alter table test_set add user_12rate float(32), add user_13rate float(32),add user_14rate float(32),
add cat_12rate float(32),add cat_13rate float(32),add cat_14rate float(32);

update test_set set user_14rate = user_bh4_28d/user_bh1_28d;
update test_set set user_13rate = user_bh3_28d/user_bh1_28d;
update test_set set user_12rate = user_bh2_28d/user_bh1_28d;
update test_set set cat_14rate = if(category_bh1_28d=0,0,category_bh4_28d/category_bh1_28d);
update test_set set cat_13rate = if(category_bh1_28d=0,0,category_bh3_28d/category_bh1_28d);
update test_set set cat_12rate = if(category_bh1_28d=0,0,category_bh2_28d/category_bh1_28d);
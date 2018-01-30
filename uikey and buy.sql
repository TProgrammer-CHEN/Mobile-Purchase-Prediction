#根据剩余数据设置uikey，并确定是否购买
create table ui_buy as (select distinct user_id,item_id,item_category from user_train);
#create table ui_buy_test as (select distinct user_id,item_id,item_category from user_test);

alter table ui_buy add buy tinyint(1);


create view buyer_train as (select distinct user_id,item_id from user_data where date(time)=date("2014-12-18") and behavior_type="4");

update ui_buy set buy = if((user_id,item_id) in (select * from buyer_train),1,0);

select * from ui_buy where buy=1;


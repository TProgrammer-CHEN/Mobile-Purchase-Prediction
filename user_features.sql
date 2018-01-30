#基于用户的/
create table user_feature as (select user_id,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=28 then behavior_type end) as user_bh1_28d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=28 then behavior_type end) as user_bh2_28d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=28 then behavior_type end) as user_bh3_28d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=28 then behavior_type end) as user_bh4_28d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=21 then behavior_type end) as user_bh1_21d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=21 then behavior_type end) as user_bh2_21d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=21 then behavior_type end) as user_bh3_21d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=21 then behavior_type end) as user_bh4_21d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=14 then behavior_type end) as user_bh1_14d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=14 then behavior_type end) as user_bh2_14d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=14 then behavior_type end) as user_bh3_14d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=14 then behavior_type end) as user_bh4_14d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=7 then behavior_type end) as user_bh1_07d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=7 then behavior_type end) as user_bh2_07d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=7 then behavior_type end) as user_bh3_07d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=7 then behavior_type end) as user_bh4_07d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=4 then behavior_type end) as user_bh1_04d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=4 then behavior_type end) as user_bh2_04d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=4 then behavior_type end) as user_bh3_04d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=4 then behavior_type end) as user_bh4_04d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=2 then behavior_type end) as user_bh1_02d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=2 then behavior_type end) as user_bh2_02d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=2 then behavior_type end) as user_bh3_02d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=2 then behavior_type end) as user_bh4_02d,
count(case when behavior_type=1 and datediff(date("2014-12-19"),date(time))<=1 then behavior_type end) as user_bh1_01d,
count(case when behavior_type=2 and datediff(date("2014-12-19"),date(time))<=1 then behavior_type end) as user_bh2_01d,
count(case when behavior_type=3 and datediff(date("2014-12-19"),date(time))<=1 then behavior_type end) as user_bh3_01d,
count(case when behavior_type=4 and datediff(date("2014-12-19"),date(time))<=1 then behavior_type end) as user_bh4_01d,
min(case when behavior_type=1 then hours end) as user_recent_bh1,
min(case when behavior_type=2 then hours end) as user_recent_bh2,
min(case when behavior_type=3 then hours end) as user_recent_bh3,
min(case when behavior_type=4 then hours end) as user_recent_bh4
from user_test  
group by user_id);

create table user_feature_train as (select user_id,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=28 then behavior_type end) as user_bh1_28d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=28 then behavior_type end) as user_bh2_28d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=28 then behavior_type end) as user_bh3_28d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=28 then behavior_type end) as user_bh4_28d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=21 then behavior_type end) as user_bh1_21d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=21 then behavior_type end) as user_bh2_21d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=21 then behavior_type end) as user_bh3_21d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=21 then behavior_type end) as user_bh4_21d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=14 then behavior_type end) as user_bh1_14d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=14 then behavior_type end) as user_bh2_14d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=14 then behavior_type end) as user_bh3_14d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=14 then behavior_type end) as user_bh4_14d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=7 then behavior_type end) as user_bh1_07d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=7 then behavior_type end) as user_bh2_07d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=7 then behavior_type end) as user_bh3_07d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=7 then behavior_type end) as user_bh4_07d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=4 then behavior_type end) as user_bh1_04d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=4 then behavior_type end) as user_bh2_04d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=4 then behavior_type end) as user_bh3_04d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=4 then behavior_type end) as user_bh4_04d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=2 then behavior_type end) as user_bh1_02d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=2 then behavior_type end) as user_bh2_02d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=2 then behavior_type end) as user_bh3_02d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=2 then behavior_type end) as user_bh4_02d,
count(case when behavior_type=1 and datediff(date("2014-12-18"),date(time))<=1 then behavior_type end) as user_bh1_01d,
count(case when behavior_type=2 and datediff(date("2014-12-18"),date(time))<=1 then behavior_type end) as user_bh2_01d,
count(case when behavior_type=3 and datediff(date("2014-12-18"),date(time))<=1 then behavior_type end) as user_bh3_01d,
count(case when behavior_type=4 and datediff(date("2014-12-18"),date(time))<=1 then behavior_type end) as user_bh4_01d,
min(case when behavior_type=1 then hours end) as user_recent_bh1,
min(case when behavior_type=2 then hours end) as user_recent_bh2,
min(case when behavior_type=3 then hours end) as user_recent_bh3,
min(case when behavior_type=4 then hours end) as user_recent_bh4
from user_train  
group by user_id);
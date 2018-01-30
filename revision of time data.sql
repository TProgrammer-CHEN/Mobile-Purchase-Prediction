#update user_train set hours = datediff(date("2014-12-18 0"),date(time))*24-hour(time)

#update user_test set hours = datediff(date("2014-12-18 0"),date(time))*24-hour(time)



update test_set set
user_recent_bh1 = if(user_recent_bh1>=2088,user_recent_bh1-1680,user_recent_bh1),
user_recent_bh2 = if(user_recent_bh2>=2088,user_recent_bh2-1680,user_recent_bh2),
user_recent_bh3 = if(user_recent_bh3>=2088,user_recent_bh3-1680,user_recent_bh3),
user_recent_bh4 = if(user_recent_bh4>=2088,user_recent_bh4-1680,user_recent_bh4),
category_recent_bh1=if(category_recent_bh1>=2088,category_recent_bh1-1680,category_recent_bh1),
category_recent_bh2=if(category_recent_bh2>=2088,category_recent_bh2-1680,category_recent_bh2),
category_recent_bh3=if(category_recent_bh3>=2088,category_recent_bh3-1680,category_recent_bh3),
category_recent_bh4=if(category_recent_bh4>=2088,category_recent_bh4-1680,category_recent_bh4),
usercategory_recent_bh1=if(usercategory_recent_bh1>=2088,usercategory_recent_bh1-1680,usercategory_recent_bh1),
usercategory_recent_bh2=if(usercategory_recent_bh2>=2088,usercategory_recent_bh2-1680,usercategory_recent_bh2),
usercategory_recent_bh3=if(usercategory_recent_bh3>=2088,usercategory_recent_bh3-1680,usercategory_recent_bh3),
usercategory_recent_bh4=if(usercategory_recent_bh4>=2088,usercategory_recent_bh4-1680,usercategory_recent_bh4),
useritem_recent_bh1=if(useritem_recent_bh1>=2088,useritem_recent_bh1>=2088-1680,useritem_recent_bh1),
useritem_recent_bh2=if(useritem_recent_bh2>=2088,useritem_recent_bh2>=2088-1680,useritem_recent_bh2),
useritem_recent_bh3=if(useritem_recent_bh3>=2088,useritem_recent_bh3>=2088-1680,useritem_recent_bh3),
useritem_recent_bh4=if(useritem_recent_bh4>=2088,useritem_recent_bh4>=2088-1680,useritem_recent_bh4)
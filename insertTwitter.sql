use twitter;

delete from user;
delete from tweet;
delete from following;
delete from followers;
delete from favorited;

insert into user values(0001, "FrankyBoi", "FrankyHot@SQLFanClub.edu");
insert into tweet values(0001, 0001, "Hello World", 1, 0, 0 );
insert into tweet values(0002, 0001, "Goodbye Cruel world!", 0, 0, 0 );
insert into followers values(0002, 0001);
insert into following values(0001, 0002);
insert into favorited values(0001, 0002);

insert into user values(0002, "User2", "u2@IDGF.com");
insert into tweet values(0003, 0002, "Bye Frank!", 0, 0, 0 );
insert into followers values(0001, 0002);
insert into following values(0002, 0001);

select *  from user;
select *  from tweet;
select *  from following;
select *  from followers;
select *  from favorited;
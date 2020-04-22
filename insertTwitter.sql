use twitter;

delete from user;
delete from tweet;
delete from followers;
delete from favorited;

-- insert users
insert into user values(0001, "FrankyBoi", "FrankyHot@SQLFanClub.edu");
insert into user values(0002, "User2", "u2@IDGF.com");
insert into user values(0003, "Guy", "guy@gmail.com");
insert into user values(0004, "Niña", "girl@gmail.com");
insert into user values(0005, "Dr.C", "notFrank@SQLFanClub.edu");
insert into user values(0006, "Annon", "no1@_|_.org");
insert into user values(0007, "User7", "Bill@aol.com");
insert into user values(0008, "GamerDude1243", "GamerDude1234@outlook.com");
insert into user values(0009, "Obama", "BarryO@whitehouse.gov");
insert into user values(0010, "Trump", "AirForce1@whitehouse.gov");

-- insert  tweet
insert into tweet values(01, 0001, "Hello World", 1, 0, 0 );
insert into tweet values(02, 0001, "Goodbye Cruel world!", 0, 0, 0 );
insert into tweet values(03, 0002, "Bye Frank!", 0, 0, 0 );
insert into tweet values(04, 0007, "How do I change my user name?", 1, 0, 1);
insert into tweet values(05, 0002, "How do I change my user name?", 0, 1, 0);
insert into tweet values(06, 0010, "We are number 1!", 0, 0, 0 );
insert into tweet values(08, 0006, ".out this figured you so oh", 1, 0, 0 );
insert into tweet values(09, 0005, "Does anyone no where I can find toliet paper?", 0, 0, 0 );
insert into tweet values(10, 0008, "Follow me on roblux", 1, 0, 0 );
insert into tweet values(11, 0005, "I have so many followers :)", 1, 0, 0 );
insert into tweet values(12, 0004, "no sé qué estás diciendo.", 4, 0, 0 );
insert into tweet values(13, 0003, "Good tweet Nina!", 0, 0, 0 );
insert into tweet values(14, 0005, "Yes! Ninaa very inspiring", 0, 0, 0 );
insert into tweet values(15, 0001, "Happy Arbor Day Everyone!", 0, 0, 0 );
insert into tweet values(16, 0002, "I think \"user2\" is starting to grow on me", 0, 0, 0 );
insert into tweet values(17, 0003, "R.I.P. in piece", 0, 0, 0 );
insert into tweet values(18, 0004, "Quienes son todos ustedes?", 4, 0, 0 );
insert into tweet values(19, 0008, "You said it G", 0, 0, 0 );
insert into tweet values(20, 0009, "This is tweet 20", 0, 0, 0 );

-- insert favorited
insert into favorited values(01, 0002);
insert into favorited values(04, 0002);
insert into favorited values(08, 0003);
insert into favorited values(10, 0007);
insert into favorited values(11, 0001);
insert into favorited values(12, 0003);
insert into favorited values(12, 0009);
insert into favorited values(12, 0010);
insert into favorited values(12, 0005);
insert into favorited values(18, 0003);
insert into favorited values(18, 0009);
insert into favorited values(18, 0010);
insert into favorited values(18, 0005);

-- insert into followers
insert into followers values(0002, 0001);
insert into followers values(0001, 0002);
insert into followers values(0004, 0001);
insert into followers values(0001, 0004);
insert into followers values(0003, 0004);
insert into followers values(0009, 0004);
insert into followers values(0010, 0004);


select *  from user;
select *  from tweet;
select *  from followers;
select *  from favorited;
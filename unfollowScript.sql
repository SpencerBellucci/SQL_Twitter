use twitter;

/*	In this situation:
		User 0005 is going to follow user 0004
*/

set @followerUserId = 0005; -- The user who is going to be following another user
set @userId = 0004; -- The user who is going to be followed

delete from followers where
		followerUserId = @followerUserId and
		userId = @userId;
        
select * from followers;
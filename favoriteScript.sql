use twitter;

/* In this situation:
	The user who is favoriting a tweet is 0002
    The tweet they are favoriting is 0001
 */

set @userId = 0002; -- User id of the user who is favoriting a tweet
set @tweetId = 0001; -- Tweet id of the tweet we are favoriting

 
 insert into favorited (tweetId, userId)
	values (
			@tweetId,
            @userId);
            
set @favoritedCount = (select favorites from tweet where tweetId = @tweetId);

update tweet
	set favorites = (@favoritedCount + 1)
    where tweetId = @tweetId;
    
    
select * from tweet where tweetId = @tweetId;
select * from favorited where tweetId = @tweetId;
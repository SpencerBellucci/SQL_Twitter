use twitter;

/* In this situation:
	The user who is favoriting a tweet is 0002
    The tweet they are favoriting is 0001
 */
 
 insert into favorited (tweetId, userId)
	values (
			0001,
            0002);
set @favoritedCount = (select retweet from tweet where tweetId = 0001);
update tweet
	set retweet = (@favoritedCount + 1)
    where tweetId = 0001;
    
    
select * from tweet;
select * from favorited;
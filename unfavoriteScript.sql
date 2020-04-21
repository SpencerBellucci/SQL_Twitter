use twitter;

/* In this situation:
	The user who is un-favoriting a tweet is 0002
    The tweet they are un-favoriting is 0001
 */
 
 delete from favorited where
	tweetId = 0001 and 
    userId = 0002;

set @favoritedCount = (select retweet from tweet where tweetId = 0001);
update tweet
	set retweet = (@favoritedCount - 1)
    where tweetId = 0001;
    
    
select * from tweet;
select * from favorited;
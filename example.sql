use twitter;

-- view users 1's timeline
select (select userName from user where userId = A.userID) as 'User Name',
		content as 'Tweet', 
        if(IsRetweet>0, (select (select userName from user where userId = B.userID) as 'User Name' 
						 from tweet as B where content = "How do I change my user name?" 
                         and not userID = 2), "") as 'Retweet From', 
        favorites as 'Number of favorites', 
        retweet as 'Number of Retweets'
from tweet as A
where userID in (select userid from followers where followerUserId = 1)
order by tweetId;

-- Delete Tweet
delete from tweet where tweetId = 16;
select (select userName from user where userId = A.userID) as 'User Name',
		content as 'Tweet', 
        if(IsRetweet>0, (select (select userName from user where userId = B.userID) as 'User Name' 
						 from tweet as B where content = "How do I change my user name?" 
                         and not userID = 2), "") as 'Retweet From', 
        favorites as 'Number of favorites', 
        retweet as 'Number of Retweets'
from tweet as A
where userID in (select userid from followers where followerUserId = 1)
order by tweetId;


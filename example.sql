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

-- see user 3's favorited tweets
select (select userName from user where userId = A.userID) as 'User Name',
		content as 'Tweet', 
        if(IsRetweet>0, (select (select userName from user where userId = B.userID) as 'User Name' 
						 from tweet as B where content = "How do I change my user name?" 
                         and not userID = 2), "") as 'Retweet From', 
        favorites as 'Number of favorites', 
        retweet as 'Number of Retweets'
from tweet as A
where tweetId in (select tweetID from favorited where userId = 3)
order by tweetId;

-- see who is following user 4
select (select userName from user where userId = A.followerUserId) as 'Niña\'s Followers'
from followers as A
where userid=4;

-- see who user 4 follows
select (select userName from user where userId = A.userid) as 'Niña is Following'
from followers as A
where followerUserId=4;

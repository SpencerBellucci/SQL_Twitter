use twitter;

-- Display favorites
select user.username, tweet.tweetid, tweet.content, tweet.favorites from tweet, user
where user.userid = tweet.userid;

-- Display retweets
select user.username, tweet.tweetid, tweet.content, tweet.retweet from tweet, user
where user.userid = tweet.userid;

-- Display user follower count
select user.username, count(followers.followeruserid) as `followers` from followers, user
where user.userid = followers.userid
group by user.username;

-- How many users one is following
select user.username, count(followers.userid) as `following` from followers, user
where user.userid = followers.followerUserId
group by user.username;


use twitter;

-- Retweet - Run this when a user wants to retweet a tweet


drop table if exists temp;

CREATE TABLE temp (
  tweetId INT NOT NULL,
  userID INT NOT NULL,
  content VARCHAR(255) NOT NULL,
  favorites INT NOT NULL,
  IsRetweet INT NOT NULL,
  retweet INT NOT NULL,
  originalId int not null, -- the original id of the tweet
  PRIMARY KEY (tweetId))
ENGINE = InnoDB;

set @tweetId = 01; -- tweet id of the tweet we are retweeting
set @userId = 0002; -- user id of the user who is retweeting the tweet

-- In this example, the user is:
# 		retweeting tweet 01
# 		the tweetId for the new tweet will be automaticaly generated
# 		the user who is retweeting this is 0002


insert into temp (tweetId, userId, content, favorites, isRetweet, retweet, originalId)
	values (
			(select max(tweetId) from tweet) + 1, 
			@userID,
            (select content from tweet where tweetId = @tweetId),
            (select favorites from tweet where tweetId = @tweetId),
            1,
            ((select retweet from tweet where tweetId = @tweetId) + 1),
            @tweetId
		);

-- Incrimenting the retweet for the original tweet
update tweet
	set retweet = (select retweet from temp)
	where tweetId = (select originalId from temp);

-- Adding the retweet into the tweet table
insert into tweet (tweetId, userId, content, favorites, isRetweet, retweet)
		values (
				(select tweetId from temp),
                (select userId from temp),
                (select content from temp),
                (select favorites from temp),
                (select isRetweet from temp),
                (select retweet from temp)
			);
drop table temp;
        
select * from tweet;
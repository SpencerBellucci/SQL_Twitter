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

-- In this example, the user is:
# 		retweeting tweet 0001
# 		the tweetId for the new tweet will be automaticaly generated
# 		the user who is retweeting this is 0002


insert into temp (tweetId, userId, content, favorites, isRetweet, retweet, originalId)
	values (
			(select max(tweetId) from tweet) + 1, 
			0002,
            (select content from tweet where tweetId = 0001),
            (select favorites from tweet where tweetId = 0001),
            1,
            ((select retweet from tweet where tweetId = 0001) + 1),
            0001
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
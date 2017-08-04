def dictionary
  dictionary = {
    "hello" => "hello",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary
  tweet_array = tweet.split
  i = 0
  while i < tweet_array.length
    if dictionary.keys.include?(tweet_array[i])
      tweet_array[i] = dictionary["#{tweet_array[i]}"]
    end
    i += 1
  end
  short_tweet = tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  unless tweet.length <= 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..136] + "..."
  end
  shortened_tweet
end

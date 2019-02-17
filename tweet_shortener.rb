# Write your code here.
def dictionary
dictionary = {
    "hello" => "hi",
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  new_tweet = []
  new_tweet << tweet.split.collect do |word|
    if dictionary.keys.include? word.downcase
      word = dictionary[word.downcase]
    else
      word
    end
  end
  new_tweet.join(" ")
end

 def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


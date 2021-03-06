# Write your code here.
def dictionary 
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you"=> "u",
    "at" => "@",
    "and" => "&"
    }
  end 
  
def word_substituter (tweet)
shortenedtweet= []
shortenedtweet << tweet.split(" ").map do |word|
  if dictionary.has_key?(word)
      word = dictionary[word]
    else word = word 
  end
  end
  shortenedtweet.join(" ")
  end
  
def bulk_tweet_shortener (tweetarray)
  tweetarray.collect do |tweet|
    shortenedtweet= []
    shortenedtweet << tweet.split(" ").map do |word|
    if dictionary.has_key?(word.downcase)
      word = dictionary[word.downcase]
    else word = word 
    end
    end
    puts shortenedtweet.join(" ")
    end
  end 
 
 def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else 
   return tweet 
 end 
 end 
  
  def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
       "#{tweet[0..136]}..."
    else  tweet 
    end
  end 
  
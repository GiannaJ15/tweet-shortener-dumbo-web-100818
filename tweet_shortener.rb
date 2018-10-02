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
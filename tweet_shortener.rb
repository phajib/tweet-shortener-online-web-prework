def dictionary
  substitute = {
    "and" => "&",
    "at" => "@",
    "be" => "b",
    "for" => "4",
    "four" => "4",
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "you" => "u"
  }
end

def word_substituter(tweet)
  chk_dict = dictionary.keys
  tweet.split(" ").collect do |word|
    if chk_dict.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  .join(" ")
end

def bulk_tweet_shortener(tweet)
  chk_dict = dictionary.keys
  
end

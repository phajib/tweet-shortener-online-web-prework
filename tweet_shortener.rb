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
    if chk_dict.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  .join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |str|
    puts word_substituter(str)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
=begin
  if word_substituter(tweet).chars.length > 140
    word_substituter(tweet).chars[0..136].push("...").join("")
  else
    word_substituter(tweet)
  end
=end
end

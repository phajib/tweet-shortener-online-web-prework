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
  tweet.split(" ").each do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  .join(" ")
end

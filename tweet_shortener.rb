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

def word_substituter(tweet)
  repl_tweet = []
  tweet.each do |str|
    if str.inlcude?("to", "too", "two")
      str.join("2 ")
    elsif str.include?()
end

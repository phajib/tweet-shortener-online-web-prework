def word_substituter(tweet)
  repl_tweet = []
  tweet.each do |str|
    if str.inlcude?("to", "too", "two")
      str.join("2 ")
end

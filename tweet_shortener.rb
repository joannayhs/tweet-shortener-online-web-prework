# Write your code here.


 def dictionary
 words_to_be_substituted = { "hello" => "hi", "to" => "2", "two" => "2", "too" =>  "2", "for" => "4","For" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end
 
 def word_substituter(string) 
   tweet = string.split
   tweet.each do |word|
     dictionary.map do |key,value|
       if word == key
         word.replace value
       end
   end
 end
  tweet.join(" ")
 end 

def bulk_tweet_shortener(array)
  array.collect{|phrase| puts word_substituter(phrase)}
end 

def selective_tweet_shortener(tweet_one)
if tweet_one.length >= 140
  puts word_substituter(tweet_one)
else
  puts tweet_one
end
end
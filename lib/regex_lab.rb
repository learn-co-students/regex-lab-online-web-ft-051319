require 'pry'

def starts_with_a_vowel?(word)
  word.match(/^[AEIOUaeiou]/) != nil
end

def words_starting_with_un_and_ending_with_ing(text)
  # textarray=[]
  # text.split.each do |word|
  #   binding.pry
  #   if word.match(/^un+\w+ing$/) != nil
  #       textarray << word
  #     end
  #   end
  #   textarray
  text.split.select {|word| word.match(/^un+\w+ing$/)}
end

def words_five_letters_long(text)
  text.split.select {|word| word.length == 5}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  textarray=text.split
  flg=textarray[0].match(/^[A-Z]/) != nil
  lword=textarray[textarray.length-1]
  flg2=lword.match(/[[:punct:]]/) != nil
  
  #text.split.select {|word| word.match(/^[A-Z]+\w+\p/)}
 #binding.pry 
  flg && flg2
end

def valid_phone_number?(phone)
  numsect = phone.scan(/[0-9]/)
  numsect.length == 10
end

def starts_with_a_vowel?(word)
  if word.match(/\A[aeiouAEIOU]/)!=nil
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z]{1}+.+[!.]/)!=nil
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/^\D*(\d\D*){10}$/)!=nil
    #match any number of non-digit characters, followed by a digit followed by any number of non-digit characters, exactly 10 times.
    true
  else
    false
  end
end

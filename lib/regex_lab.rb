def starts_with_a_vowel?(word)
  word.match?(/\b[AEIOUaeiou]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b(un[a-z]{1,}ing)/).flatten
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/).flatten
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match?(/^[A-Z](\s|[a-zA-Z,'.?!]{1,}\s){1,}[a-zA-Z]{1,}[.?!]\z/)
end

def valid_phone_number?(phone)
  phone.match?(/^\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}$/)
end

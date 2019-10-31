require 'pry'
def starts_with_a_vowel?(word) 
    word.scan(/\A[AEIOUaeiou]/).length > 0 ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
    words = text.scan(/\w+/)
    words.select do |word|
        word.scan(/\Aun/).length > 0 && word.scan(/ing\z/).length > 0
    end
end

def words_five_letters_long(text)
    words = text.scan(/\w+/)
    words.select {|word| word.length == 5}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text.scan(/\A[A-Z]/).length > 0 && text.scan(/[!?\.]\z/).length > 0
        true
    else
        false
    end
end

def valid_phone_number?(phone)
    number = phone.to_s
    number.scan(/\d/).length == 10
end

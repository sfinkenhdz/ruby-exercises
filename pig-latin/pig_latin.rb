def convert_word_to_pig_latin(word)
  vowels = %w[a e i o u y]

  word_array = word.split(//)

  if vowels.include?(word_array[0])
    word
  else
    consonants = word_array.take_while { |letter| !vowels.include?(letter)}
    word_array.shift(consonants.length)
    word_array << consonants
    word_array.join + "ay"
  end
end

def convert_sentence_to_pig_latin(sentence)
  words = sentence.split(/ /)

  words.map! { |word| convert_word_to_pig_latin(word) }
  words.join(" ")
end

# p convert_word_to_pig_latin("away")
# p convert_word_to_pig_latin("zebra")
# p convert_word_to_pig_latin("programmers") # => ogrammerspray
# p convert_sentence_to_pig_latin("we love to code all the time")

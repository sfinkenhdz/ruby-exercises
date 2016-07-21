require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it "returns word if it begins with a vowel" do
    expect(convert_word_to_pig_latin("away")).to eq("away")
  end
end

describe 'Converting single words to Pig Latin' do
  it "takes the leading consonants to the end and add ay" do
    expect(convert_word_to_pig_latin("zebra")).to eq("ebrazay")
  end
end

describe 'Converting a sentence to Pig Latin' do
  it "takes the leading consonants of each word in a sentence to the end and add ay" do
    expect(convert_sentence_to_pig_latin("we love to code all the time")).to eq("eway ovelay otay odecay all ethay imetay")
  end
end


# p convert_word_to_pig_latin("away")
# p convert_word_to_pig_latin("zebra")
# p convert_word_to_pig_latin("programmers")

# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    string.downcase.split(' ').each { |search| hash[word.to_sym] += 1 if search.include?(word) }
    hash
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)

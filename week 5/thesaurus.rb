# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Thesaurus
  def delete(word)
    entry = Entry.find_by(word: word)
    entry.destroy
  end

  def add(name, synonyms, antonyms)
    Entry.new(name: name, synonyms: synonyms, anytonyms: antonyms)
  end
end

class Entry
  attr_reader :word, :synonyms, :antonyms
  def initialize(input_options)
    @word = input_options[:word],
    @synonyms = input_options[:synonyms],
    @antonyms = input_options[:antonyms]
  end

  def add_synonym(synonym)
    @synonyms << synonym
  end
  
  def add_antonym(antonym)
    @antonyms << antonym
  end

end

entry = Entry.new(word: 'good', synonyms: ['great', 'grand', 'wonderful'], antonyms: ['bad', 'terrible'])

entry.add_synonym('super')

p entry.synonyms

thesaurus = Thesaurus.new()


require('rspec')
require('pry')
require('dictionary')
require('term')

describe(Dictionary) do
   describe('#add_word') do
    it("adds a new word to the dictionary") do
      dictionary = Dictionary.new()
      test_word = Term.new("carrot", "A delicious vegetable")
      dictionary.add_word(test_word)
      expect(dictionary.words()).to(eq([test_word]))
    end
  end
end

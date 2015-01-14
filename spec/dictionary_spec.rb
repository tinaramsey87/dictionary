require('rspec')
require('pry')
require('dictionary')

describe(Term) do
    before() do
    Term.clear()
  end

  describe('#word') do
    it('returns the word') do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.add()
      expect(test_word.word()).to(eq("carrot"))
    end
  end

  describe('#definition') do
    it('returns the definition') do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.add()
      expect(test_word.definition()).to(eq("A delicious vegetable"))
    end
  end

  describe('#add') do
    it('adds a word and definition to the dictionary') do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.add()
      expect(Term.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Term.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved terms') do
      Term.new("carrot", "A delicious vegetable").add()
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end
end

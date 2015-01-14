class Term
  @@terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
    @id = @@terms.length().+(1)
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@terms
  end

  define_method(:add) do
    @@terms.push(self)
  end

  define_singleton_method(:delete) do |identification|
    @@terms.each() do |word|
      if word.id().eql?(identification.to_i())
        @@terms.delete(word)
      end
    @@terms
    end
  end

  define_singleton_method(:clear) do
    @@terms = []
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@terms.each() do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end
end

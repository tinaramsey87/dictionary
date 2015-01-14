class Term
  @@terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@terms
  end

  define_method(:add) do
    @@terms.push(self)
  end

  define_singleton_method(:clear) do
    @@terms = []
  end

end

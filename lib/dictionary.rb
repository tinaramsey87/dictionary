class Dictionary
  define_method(:initialize) do
    @words = []
  end

  define_method(:words) do
    @words
  end

  define_method(:add_word) do |word|
    @words.push(word)
  end

end

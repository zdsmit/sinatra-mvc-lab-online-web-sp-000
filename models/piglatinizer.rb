class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def convert
    a = @text.split(" ")
    b = a.map {|word| convert_word(word)}
    b.join(" ")
  end

  def convert_word(word)
    first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
    end
  end

end

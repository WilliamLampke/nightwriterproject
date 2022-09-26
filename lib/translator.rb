require 'pry'
class Translator
  attr_reader :word, :braille_hash

  def initialize(word)
    @word = word.downcase
    @braille_hash = { 'a' => "0.\n..\n..",
                          'b' => "0.\n0.\n..",
                          'c' => "00\n..\n..",
                          'd' => "00\n.0\n..",
                          'e' => "0.\n.0\n..",
                          'f' => "00\n0.\n..",
                          'g' => "00\n00\n..",
                          'h' => "0.\n00\n..",
                          'i' => ".0\n0.\n..",
                          'j' => ".0\n00\n..",
                          'k' => "0.\n..\n0.",
                          'l' => "0.\n0.\n0.",
                          'm' => "00\n..\n0.",
                          'n' => "00\n.0\n0.",
                          'o' => "0.\n.0\n0.",
                          'p' => "00\n0.\n0.",
                          'q' => "00\n00\n0.",
                          'r' => "0.\n00\n0.",
                          's' => ".0\n0.\n0.",
                          't' => ".0\n00\n0.",
                          'u' => "0.\n..\n00",
                          'v' => "0.\n0.\n00",
                          'w' => ".0\n00\n.0",
                          'x' => "00\n..\n00",
                          'y' => "00\n.0\n00",
                          'z' => "0.\n.0\n00",
                          ' ' => "..\n..\n.."}
  end
  def translate
    split_word = @word.scan(/./)
    line1 = []
    line2 = []
    line3 = []
    split_word.each do |letter|
        if braille_hash.include?(letter)
            line_storage = braille_hash[letter].split("\n")
            line1 << line_storage[0]
            line2 << line_storage[1]
            line3 << line_storage[2]
        end
    end
    braille_word = ""
    while line1.length > 0
        braille_word += (line1.shift(20).join() + "\n" + line2.shift(20).join() + "\n" + line3.shift(20).join()) 
        braille_word += "\n" if line1.length > 0
    end
    braille_word
  end
end

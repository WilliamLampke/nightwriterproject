#need to do similar line thing to the 80 line thing in translater 2 indexing 

require 'pry'
class Detranslator
  attr_reader :braille, :braille_hash

  def initialize(braille)
    @braille = braille
    @braille_hash = { "0....." => 'a',
        "0.0..." => 'b',
        "00...." => 'c',
        "00.0.." => 'd',
        "0..0.." => 'e',
        "000..." => 'f',
        "0000.." => 'g',
        "0.00.." => 'h',
        ".00..." => 'i',
        ".000.." => 'j',
        "0...0." => 'k',
        "0.0.0." => 'l',
        "00..0." => 'm',
        "00.00." => 'n',
        "0..00." => 'o',
        "000.0." => 'p',
        "00000." => 'q',
        "0.000." => 'r',
        ".00.0." => 's',
        ".0000." => 't',
        "0...00" => 'u',
        "0.0.00" => 'v',
        ".000.0" => 'w',
        "00..00" => 'x',
        "00.000" => 'y',
        "0..000" => 'z',
        "......" => ' '
     }
  end

  def translate
    final_print = ""
    line_count = 0
    lines = @braille.split
    while lines.length > line_count
        line1 = lines[line_count]
        line2 = lines[line_count + 1]
        line3 = lines[line_count + 2]
        while line3.length > 0
            word = ""
            word.append(line1[0..2])
            word.append(line[0..2])
            word.append 
        end
    end
  end
end

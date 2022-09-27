require 'detranslator'
require 'night_writer'
RSpec.describe Detranslator do
  before(:all) do
    @detranslator = Detranslator.new("0.0.0.0.0....00.0.0.000.0.0.0.0....00.0.
00.00.0..0..00.0000..000.00.0..0..00.000
....0.0.0....00.0.0.......0.0.0....00.0.
0.000.0.0.0.0....00.0.0.000.0.0.0.0....0
0..000.00.0..0..00.0000..000.00.0..0..00
0.......0.0.0....00.0.0.......0.0.0....0
0.0.0.000.0.0.0.0....00.0.0.000.0.0.0.0.
.0000..000.00.0..0..00.0000..000.00.0..0
0.0.0.......0.0.0....00.0.0.......0.0.0.
...00.0.0.000.0.0.0.0....00.0.0.000.0.0.
..00.0000..000.00.0..0..00.0000..000.00.
...00.0.0.......0.0.0....00.0.0.......0.
0.0....00.0.0.00
0..0..00.0000..0")
  end
  describe 'Detranslator' do
    it 'can detranslate braille into engilish' do
      expected = 'Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World'
      expect(@detranslator.translate).to eq(expected)
    end
  end
end

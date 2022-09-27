require 'detranslator'
require 'spec_helper'
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
0..0..00.0000..0
0.0....00.0.0...")
  end
  describe 'Detranslator' do
    it 'can translate simple braille' do
      detranslator1 = Detranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")
      expect(detranslator1.translate).to eq('hello world')
    end
    it 'can detranslate long multi section braille into engilish' do
      expected = 'hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello world'
      expect(@detranslator.translate).to eq(expected)
    end
  end
end

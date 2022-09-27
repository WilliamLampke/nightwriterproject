require 'translator'
RSpec.describe Translator do
  before(:all) do
    @translator = Translator.new('Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World')
  end
  describe '#translator' do
    it 'can make a hash with key/value pairs for the following attributes' do
      translator1 = Translator.new('Hello World')
      expected1 = "0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0..."
      expect(translator1.translate).to eq(expected1)
    end
    it 'can split lines longer than 20 characters' do
      expected2 = "0.0.0.0.0....00.0.0.000.0.0.0.0....00.0.
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
0.0....00.0.0..."
      expect(@translator.translate).to eq(expected2)
    end
  end
  describe 'line_store' do
    it 'can store the translation as 3 seprate lines' do
      translator = Translator.new("Hello World")
      expect(translator.line_store[0]).to eq(["0.", "0.", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", "00"])
    end
  end
end

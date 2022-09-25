require 'translator'

RSpec.describe Translator do
  before(:all) do
   @translator = Translator.new("Hello World")
  end

  describe '#team statistics' do
    it 'can make a hash with key/value pairs for the following attributes' do
      expected = {
        "0.0.0.0.0....00.0.0.00
        00.00.0..0..00.0000..0
        ....0.0.0....00.0.0..."
        }
      expect(@translator.translate).to eq(expected)
    end
  end
end 
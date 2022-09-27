require './lib/night_writer'
require 'translator'

RSpec.describe Night_writer do
    allow(:ARGV) { ['message.txt', 'braille.txt'] }
    it 'can use user input to form an output message' do
        expect(system("night_writer")).to eq("Created 'braille.txt' containing 542 characters")
    end
end
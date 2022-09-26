# require_relative 'translator'
# first_file = ARGV[0]
# second_file = ARGV[1]
# message = File.open(first_file)
# message_data = File.read(message)
# translator = Translator.new(message_data)
# File.open(second_file, "w") { |f| f.write translator.translate}
# puts "Created '#{second_file}' containing #{translator.translate.length} characters"
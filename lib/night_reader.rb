require_relative 'detranslator'

first_file = ARGV[0]
second_file = ARGV[1]
message = File.open(first_file)
message_data = File.read(message)
detranslator = Detranslator.new(message_data)
File.open(second_file, 'w') { |f| f.write detranslator.translate }
puts "Created '#{second_file}' containing #{detranslator.translate.length} characters"

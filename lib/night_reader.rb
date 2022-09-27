require_relative 'detranslator'

first_file = ARGV[0]
second_file = ARGV[1]
message = File.open(first_file)
message_data = File.read(message)
retranslator = Detranslator.new(message_data)
File.open(second_file, 'w') { |f| f.write retranslator.translate }
puts "Created '#{second_file}' containing #{retranslator.translate.length} characters"

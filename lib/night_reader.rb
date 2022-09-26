require_relative 'detranslator'

first_file = ARGV[0]
second_file = ARGV[1]
message = File.open(first_file)
message_data = File.read(message)
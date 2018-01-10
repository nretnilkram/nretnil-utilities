#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'
require 'nretnil-utilities'

puts '<h3>Array</h3>'

puts "\n"

puts '```ruby'
puts "\n"

array = %w[fishing bait worm]

puts "array=#{array}\n\n"

puts 'array.include? fish  # This is a built in Array function.'
puts '# => ' + array.include?('fish').to_s
puts "\n"

puts 'array.partial_include? fish'
puts '# => ' + array.partial_include?('fish').to_s
puts "\n"

puts 'array.partial_include? shi'
puts '# => ' + array.partial_include?('shi').to_s
puts "\n"

puts 'array.partial_include? shark'
puts '# => ' + array.partial_include?('shark').to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Hash</h3>'

puts "\n"

puts '```ruby'
puts "\n"

hash = { one: 'un', two: 'deux', three: 'trois', four: 'quatre' }

puts "hash=#{hash}\n\n"

puts 'hash.json_pretty'
puts '# => ' + hash.json_pretty.to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Integer</h3>'

puts "\n"

puts '```ruby'
puts "\n"

puts '1234567890.to_human'
puts '# => ' + 1_234_567_890.to_human
puts "\n"

puts '1234567890.to_human(5)'
puts '# => ' + 1_234_567_890.to_human(5)
puts "\n"

puts '8549176320.to_human(1)'
puts '# => ' + 8_549_176_320.to_human(1)
puts "\n"

puts '12.to_human'
puts '# => ' + 12.to_human
puts "\n"

puts '5234566788764321.to_human'
puts '# => ' + 5_234_566_788_764_321.to_human
puts "\n"

puts '1234567890987654321.to_human'
puts '# => ' + 1_234_567_890_987_654_321.to_human
puts "\n"

puts '```'
puts "\n"

puts '<h3>String</h3>'

puts "\n"

puts '```ruby'
puts "\n"

string = 'TrUe'

puts "string=\"#{string}\"\n\n"

puts 'string.to_b'
puts '# => ' + string.to_b.to_s
puts "\n"

puts '"F".to_b'
puts '# => ' + 'F'.to_b.to_s
puts "\n"

string = 'Television'

puts "string=\"#{string}\"\n\n"

puts 'string.first'
puts '# => ' + string.first
puts "\n"

puts 'string.middle'
puts '# => ' + string.middle
puts "\n"

puts 'string.last'
puts '# => ' + string.last
puts "\n"

puts 'string.shuffle'
puts '# => ' + string.shuffle
puts "\n"

puts 'string.scramble'
puts '# => ' + string.scramble
puts "\n"

puts 'string.valid_json?'
puts '# => ' + string.valid_json?.to_s
puts "\n"

string = 'jOhN sMiTh'

puts "string=\"#{string}\"\n\n"

puts 'string.proper'
puts '# => ' + string.proper
puts "\n"

string = 'nretnil kram'

puts "string=\"#{string}\"\n\n"

puts 'string.proper'
puts '# => ' + string.proper
puts "\n"

string = 'One two 3.'

puts "string=\"#{string}\"\n\n"

puts 'string.proper'
puts '# => ' + string.proper
puts "\n"

puts 'string.first'
puts '# => ' + string.first
puts "\n"

puts 'string.middle'
puts '# => ' + string.middle
puts "\n"

puts 'string.last'
puts '# => ' + string.last
puts "\n"

puts 'string.shuffle'
puts '# => ' + string.shuffle
puts "\n"

puts 'string.scramble'
puts '# => ' + string.scramble
puts "\n"

puts 'string.valid_json?'
puts '# => ' + string.valid_json?.to_s
puts "\n"

string = '{ "One Octet" }'

puts "string=\'#{string}\'\n\n"

puts 'string.valid_json?'
puts '# => ' + string.valid_json?.to_s
puts "\n"

string = '{ "foo": "bar" }'

puts "string=\'#{string}\'\n\n"

puts 'string.valid_json?'
puts '# => ' + string.valid_json?.to_s
puts "\n"

string = '7*d8f7R6$5H@~32'

puts "string=\'#{string}\'\n\n"

puts 'string.sym?'
puts '# => ' + string.sym?.to_s
puts "\n"

string = '78d8f7R6k5H4g2'

puts "string=\'#{string}\'\n\n"

puts 'string.sym?'
puts '# => ' + string.sym?.to_s
puts "\n"

puts 'string.uuid?'
puts '# => ' + string.uuid?.to_s
puts "\n"

string = '0b5865e9-0262-6238-1427-35b77c466ebd'

puts "string=\'#{string}\'\n\n"

puts 'string.uuid?'
puts '# => ' + string.uuid?.to_s
puts "\n"

string = '0865e9-026-6238-127-35b77c46bd'

puts "string=\'#{string}\'\n\n"

puts 'string.uuid?'
puts '# => ' + string.uuid?.to_s
puts "\n"

string = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'

puts "string=\'#{string}\'\n\n"

puts 'string.uuid?'
puts '# => ' + string.uuid?.to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Time</h3>'

puts "\n"

puts '```ruby'
puts "\n"

puts 'timing'
puts '# => ' + timing.to_s
puts "\n"

puts 'timing(12.8345679)'
puts '# => ' + timing(12.8345679)
puts "\n"

puts 'timing(123)'
puts '# => ' + timing(123)
puts "\n"

puts 'timing(1_234.56789)'
puts '# => ' + timing(1_234.56789)
puts "\n"

puts 'timing(12_345)'
puts '# => ' + timing(12_345)
puts "\n"

puts '```'
puts "\n"

puts '<h3>Utilities</h3>'

puts "\n"

puts '```ruby'
puts "\n"

puts '6.times do'
puts '  fifty_fifty'
puts 'end'
6.times do
  puts '# => ' + fifty_fifty.to_s
end
puts "\n"

puts '6.times do'
puts '  one_third'
puts 'end'
6.times do
  puts '# => ' + one_third.to_s
end
puts "\n"

puts '6.times do'
puts '  coin_flip'
puts 'end'
6.times do
  puts '# => ' + coin_flip
end
puts "\n"

puts '```'
puts "\n"

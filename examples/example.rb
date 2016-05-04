require 'rubygems'
require 'nretnil-utilities'

puts "<h3>Array</h3>"

puts "\n"

puts "```ruby"
puts "\n"

array = ["fishing","bait","worm"]

puts "array=#{array}\n\n"

puts "array.include? fish  # This is a build in Array funtion."
puts "# => " + array.include?("fish").to_s
puts "\n"

puts "array.partial_include? fish"
puts "# => " + array.partial_include?("fish").to_s
puts "\n"

puts "array.partial_include? shi"
puts "# => " + array.partial_include?("shi").to_s
puts "\n"

puts "array.partial_include? shark"
puts "# => " + array.partial_include?("shark").to_s
puts "\n"

puts "```"
puts "\n"


puts "<h3>Hash</h3>"

puts "\n"

puts "```ruby"
puts "\n"

hash = { :one => "un", :two => "deux", :three => "trois", :four => "quatre" }

puts "hash=#{hash}\n\n"

puts "hash.json_pretty"
puts "# => " + hash.json_pretty.to_s
puts "\n"

puts "```"
puts "\n"


puts "<h3>Integer</h3>"

puts "\n"

puts "```ruby"
puts "\n"

puts "1234567890.to_human"
puts "# => " + 1234567890.to_human
puts "\n"

puts "1234567890.to_human(5)"
puts "# => " + 1234567890.to_human(5)
puts "\n"

puts "8549176320.to_human(1)"
puts "# => " + 8549176320.to_human(1)
puts "\n"

puts "12.to_human"
puts "# => " + 12.to_human
puts "\n"

puts "5234566788764321.to_human"
puts "# => " + 5234566788764321.to_human
puts "\n"

puts "1234567890987654321.to_human"
puts "# => " + 1234567890987654321.to_human
puts "\n"

puts "```"
puts "\n"


puts "<h3>String</h3>"

puts "\n"

puts "```ruby"
puts "\n"

string = "TrUe"

puts "string=\"#{string}\"\n\n"

puts "string.to_b"
puts "# => " + string.to_b.to_s
puts "\n"

puts "\"F\".to_b"
puts "# => " + "F".to_b.to_s
puts "\n"

string = "Television"

puts "string=\"#{string}\"\n\n"

puts "string.first"
puts "# => " + string.first
puts "\n"

puts "string.middle"
puts "# => " + string.middle
puts "\n"

puts "string.last"
puts "# => " + string.last
puts "\n"

puts "string.shuffle"
puts "# => " + string.shuffle
puts "\n"

puts "string.scramble"
puts "# => " + string.scramble
puts "\n"

puts "string.valid_json?"
puts "# => " + string.valid_json?.to_s
puts "\n"

string = "One two 3."

puts "string=\"#{string}\"\n\n"

puts "string.first"
puts "# => " + string.first
puts "\n"

puts "string.middle"
puts "# => " + string.middle
puts "\n"

puts "string.last"
puts "# => " + string.last
puts "\n"

puts "string.shuffle"
puts "# => " + string.shuffle
puts "\n"

puts "string.scramble"
puts "# => " + string.scramble
puts "\n"

puts "string.valid_json?"
puts "# => " + string.valid_json?.to_s
puts "\n"

string = "{ \"Once Octet\" }"

puts "string=\'#{string}\'\n\n"

puts "string.valid_json?"
puts "# => " + string.valid_json?.to_s
puts "\n"

string = "{ \"foo\": \"bar\" }"

puts "string=\'#{string}\'\n\n"

puts "string.valid_json?"
puts "# => " + string.valid_json?.to_s
puts "\n"

puts "```"
puts "\n"
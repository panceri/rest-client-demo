require 'rest-client'

printf "Enter a key to search in RailsCast!! "
input = gets.chomp

input = input.split(" ")

result = RestClient.get "http://railscasts.com/episodes?utf8=%E2%9C%93&search={input}"
result = result.to_str

puts
puts "Related search"
puts result



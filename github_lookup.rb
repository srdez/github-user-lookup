require 'open-uri'
require 'json'

print 'Please enter a GitHub username to check: '

username = gets.chomp

json = URI.open("https://api.github.com/users/#{username}").read
repos_json = URI.open("https://api.github.com/users/#{username}/repos").read
user = JSON.parse(json)
repos = JSON.parse(repos_json)

puts "\nRetrieving data..."
sleep(1)

puts "\n--------------------------------------------"
puts " GitHub user: #{user['login']}"
puts " Name                    : #{user['name'] || 'N/A'}"
puts " Company                 : #{user['company'] || 'N/A'}"
puts " Location                : #{user['location'] || 'N/A'}"
puts " Bio                     : #{user['bio'] || 'N/A'}"
puts " Profile URL             : #{user['html_url']}"
puts " Created at              : #{user['created_at']}"
puts " Followers               : #{user['followers']}"
puts " Following               : #{user['following']}"
puts "--------------------------------------------"

puts "\n#{user['login']} has #{user['public_repos']} public repos:"
repos.each do |repo|
  puts "\n Name                    : #{repo['name']}"
  puts " URL                     : #{repo['html_url']}"
end
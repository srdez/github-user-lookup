require 'open-uri'
require 'json'

while true
  print 'Please enter a GitHub username (or "q" to quit): '
  username = gets.chomp.downcase

  unless username == 'q'
    json = URI.open("https://api.github.com/users/#{username}").read
    user = JSON.parse(json)

    puts "\nRetrieving data..."
    sleep(1)

    puts "\n----------------------------------------"
    puts " GitHub user: #{user['login']}"
    puts " Name                    : #{user['name'] || 'N/A'}"
    puts " Company                 : #{user['company'] || 'N/A'}"
    puts " Location                : #{user['location'] || 'N/A'}"
    puts " Bio                     : #{user['bio'] || 'N/A'}"
    puts " Profile URL             : #{user['html_url']}"
    puts " Created at              : #{user['created_at']}"
    puts " Followers               : #{user['followers']}"
    puts " Following               : #{user['following']}"
    puts " Public repos            : #{user['public_repos']}"
    puts "----------------------------------------\n\n"
  else
    puts ""
    puts "Bye!"
    break
  end
end




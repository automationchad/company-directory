# Project: Company directory (featuring Faker) - William Marzella

require 'faker'

# 1 - 100 names only 5+ chars
names = []
until names.length == 100 do
  f_name = Faker::Name.unique.first_name
  names << f_name if f_name.length >= 5
end
puts names.sort

#2 - 25 names and emails (array of hashes).

names = []
until names.length == 25 do
  f_name = Faker::Name.unique.first_name
  email_name = Faker::Internet.unique.email
  names << {name: f_name, email: email_name} if f_name.length >= 5
end
puts names

#3 - 25 Names and emails based on first and last name
names = []
until names.length == 25 do
  f_name = Faker::Name.unique.first_name
  l_name = Faker::Name.unique.last_name
  domain_name = Faker::Internet.unique.domain_word
  f_letter = f_name.chr # so the email letter is downcase
  l_name_email = l_name.delete(?') # Delete any apostrophes in the last name
  names << {name: "#{f_name} #{l_name}", email: "#{f_letter}.#{l_name_email}@#{domain_name}.com".downcase} if f_name.length >= 5
end
puts names

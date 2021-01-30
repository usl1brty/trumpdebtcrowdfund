# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
CSV.foreach('congress.csv') do |row|
  last_name = row[0]
  first_name = row[1]
  middle_name = row[2]
  nickname = row[3]
  full_name = row[4]
  birthday = row[5]
  chamber = row[6]
  state = row[7]
  party = row[8]
  url = row[9]
  address = row[10]
  phone = row[10]
  contact_form = row[10]
  Politician.create(last_name: last_name, first_name: first_name, middle_name: middle_name,
    nickname: nickname, full_name: full_name, birthday: birthday, chamber: chamber, state: state,
    party: party, url: url, address: address, phone: phone, contact_form: contact_form,)
end
puts "done"

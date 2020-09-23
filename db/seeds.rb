# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require "open-uri"
# require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Creating leads...'

puts "Start time is #{Time.now}"
puts "--------------------------"

User.destroy_all

puts 'Creating a fake user...'

User.create!(
    email: "admin@demo.com",
    password: "password",
    admin: true)


puts "finished seeding"

puts "#{User.count} users created"
puts "--------------------------"
puts "End time is #{Time.now}"
puts "--------------------------"
puts 'Finished!'
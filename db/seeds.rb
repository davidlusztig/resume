# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require "open-uri"
require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Lead.destroy_all
User.destroy_all

puts 'Creating leads...'

puts "Start time is #{Time.now}"
puts "--------------------------"


puts 'Creating a fake user...'
puts "--------------------------"

admin = User.new(
    email: "admin@demo.com",
    password: "password",
    admin: true)
admin.save!

    5.times do
      Lead.create(
          name: Faker::Company.name,
        )
    end
puts "5 leads created"

puts "finished seeding"
puts "--------------------------"

puts "#{User.count} users created"
puts "--------------------------"
puts "End time is #{Time.now}"
puts "--------------------------"
puts 'Finished!'
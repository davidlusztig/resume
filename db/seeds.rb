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

puts 'admin created'
puts "--------------------------"

admin = User.new(
    email: "guest@demo.com",
    password: "password",
    admin: false)
admin.save!

puts "guest created!"
puts "--------------------------"

puts "--------------------------"
puts "creating fake users"

(1..10).each do |id|
    User.create!(
# each user is assigned an id from 1-20
        id: id, 
        email: Faker::Internet.email,
        password: "password", 
        password_confirmation: "password",
# a user can have only one of these roles
        admin: false 
    )
end

puts "--------------------------"
puts "creating fake leads"

(1..10).each do |id|
        Lead.create!(
            id: id,
            # we have userIds between 120 and 220. Assign a ticket to a user 
            # randomly
            user_id: rand(1..10), 
            name: Faker::Company.name
        )
          
end


puts "finished seeding"
puts "--------------------------"

puts "#{User.count} users created"
puts "--------------------------"
puts "End time is #{Time.now}"
puts "--------------------------"
puts 'Finished!'
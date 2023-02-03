# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Clearing database...'

Appointment.destroy_all
User.destroy_all

puts 'Database cleared!'

puts 'Creating patients that need treatment...'

5.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: '1234',
    )
end

puts 'Patients awaiting appointments!'

puts 'Getting qualified doctors...'

3.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: '1234',
        medical_degree: ['Chiropracty', 'Oncology', 'Endimology'].sample,
    )
end

puts 'These doctors are qualified I think...'

User.create(
    first_name: 'Princeton',
    last_name: 'Rose',
    email: 'prose@gmail.com',
    password: '1234',
)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
        
puts "Destroying chores"
Chore.destroy_all

puts "Creating chores"
chores = [
    {
      family_member: "Madeline",
      due_date: "2020-10-20",
      description: "Walk dog",
      priority: "Medium",
    },
    {
      family_member: "Logan",
      due_date: "2020-10-25",
      description: "Brush cat",
      priority: "Medium",
    },
    {
      family_member: "Tyler",
      due_date: "2020-10-17",
      description: "Wash, dry, & fold laundry",
      priority: "High",
    },
    {
      family_member: "Wendy",
      due_date: "2020-10-20",
      description: "Clean dishes",
      priority: "High",
    },
    {
      family_member: "Robert",
      due_date: "2020-10-30",
      description: "Re-paint garage doors",
      priority: "Low",
    }
  ]

  chores.each do |chore|
    Chore.create!(chore)
  end



  puts "Destroying chores"
  Chore.destroy_all
# frozen_string_literal: true

Student.destroy_all
House.destroy_all

5.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(1..1234)
  house = House.create(name: house_name, points: house_points)

  students_in_house = rand(5..10)
  students_in_house.times do
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end
end

puts "Created #{House.count} Houses."
puts "Created #{Student.count} Students."

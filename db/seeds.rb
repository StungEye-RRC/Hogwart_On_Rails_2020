# frozen_string_literal: true

House.destroy_all

8.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(1..1234)
  House.create(name: house_name, points: house_points)
end

puts "Created #{House.count} Houses."

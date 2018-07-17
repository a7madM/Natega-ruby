# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def pull_grades_data(seat_number = 360_220, count = 100)
    data = []
    (seat_number..seat_number + count).each do |seat|
      url = URI('http://natega.youm7.com/Home/GetResultStage1/')
      response = Net::HTTP.post_form(url, 'SeatNumber' => seat)
      record = JSON.parse(response.read_body)
      record = Hash[*record]
      grade = Grade.new(record)
      grade.save
      data << grade
    end
end

  pull_grades_data(360220,363)
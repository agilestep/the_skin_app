# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Account.create!({first_name: "Serghei",
                last_name: "LastName",
                nick_name: "skyrunner",
                account_type: 1,
                email: 'goodemail@gmail.com'})
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


image = Image.new({name: "Nice Image"})

# like this
File.open('/home/serghei/projects/skin/the_skin_app/public/download.jpg') do |f|
  image.storage = f
end

image.save


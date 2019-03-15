# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
#...

10.times do 
    Product.create!(title: Faker::Food.dish,
    description:
        %{<p>
        <em> Food Item!</em>} + 
        Faker::Food.description +
        %{</p>},
    image_url: 'somefood.jpg',
    price: rand(0...15) + rand() )
 end

 # Manual Price Tests
 Product.create!(title: Faker::Food.dish,
    description:
        %{<p>
        <em> Food Item!</em>} + 
        Faker::Food.description +
        %{</p>},
    image_url: 'somefood.jpg',
    price: rand(0...15) + 0.40)

    Product.create!(title: Faker::Food.dish,
    description:
        %{<p>
        <em> Food Item!</em>} + 
        Faker::Food.description +
        %{</p>},
    image_url: 'somefood.jpg',
    price: rand(0...15) + 0.00)

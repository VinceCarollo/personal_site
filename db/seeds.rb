# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

Article.create!(title: 'Down Rails', description: "The Story of my Jump into Ruby on Rails", medium_link: 'https://medium.com/@vincecarollo/down-rails-4d62f19bfc03', image: 'https://cdn-images-1.medium.com/max/1440/1*WzNe6SVM5_qi8J0t-wrqYA.png')

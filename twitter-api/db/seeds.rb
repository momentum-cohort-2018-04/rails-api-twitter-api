# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{username: 'Boots'},{username: 'Marmie'},{username: 'Bananas'},{username:'Mary'},{username:'Don'},{username:'Kelly'}])
posts = Post.create([{body: "I like hiking", user_id: 1},{body:'Rootin Tootin', user_id: 2},{body:'I like to think I am apeeling', user_id:3}])



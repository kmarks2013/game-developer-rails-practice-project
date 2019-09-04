# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Developer.destroy_all
# Game.destroy_all


justin = Developer.create(name: "Square Enix", ceo: "Justin", location: "San Antonio, Texas")
kenny = Developer.create(name: "Nintendo", ceo: "Kenny", location: "Amityville, New York")
trevor = Developer.create(name: "Bungie", ceo: "Trevor", location: "Denver, Colorado")


tomb = Game.create(name:"Tomb Raider", price: 59.99, developer_id: justin.id)
zelda = Game.create(name:"Legend of Zelda", price: 59.99, developer_id: kenny.id)
final_fantasy = Game.create(name:"Final Fantasy XV", price: 59.99, developer_id: justin.id)
destiny = Game.create(name:"Destiny", price: 59.99, developer_id: trevor.id)
apex = Game.create(name:"Apex Legends", price: 0.00, developer_id: kenny.id)
rdr2  = Game.create(name:"Red Dead Redemption 2", price: 29.99, developer_id: kenny.id)


puts "games in the db"
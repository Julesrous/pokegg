# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Purchase.destroy_all
PokeEgg.destroy_all
User.destroy_all

user_1 = User.create(first_name: 'Sacha', last_name: 'Ketchen', gender: 'male', region: 'Kanto', experiences: 'very high')
user_2 = User.create(first_name: 'Ondine', last_name: 'Ketchen', gender: 'female', region: 'Kanto', experiences: 'very high')
user_3 = User.create(first_name: 'Aurore', last_name: 'Féli-cité', gender: 'female', region: 'Sinnoh', experiences: 'good')
p "users created"

pokegg_1 = PokeEgg.new(name: 'Pikachu', category: 'Electricity', birth_day: '10th February 2021', region: 'Kanto', state: 'Very good')
p "poke1 created"
pokegg_1.user = user_1
pokegg_1.save

pokegg_2 = PokeEgg.new(name: 'Chenipan', category: 'Plant', birth_day: '9th December 2020', region: 'Kanto', state: 'Good')
pokegg_2.user = user_2
pokegg_2.save


pokegg_3 = PokeEgg.new(name: 'Etourmi', category: 'Vol', birth_day: '4th November020', region: 'Sinnoh', state: 'Very good')
pokegg_3.user = user_3
pokegg_3.save

purchase_1 = Purchase.new(price_poke_egg: 10000, transport_type: 'boat', transport_time: 20, transport_price: 400, total_price: 10400, date_arriving: '4th december 2020')
purchase_1.user = user_3
purchase_1.poke_egg = pokegg_2
purchase_1.save

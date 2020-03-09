# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "poke-api-v2"
require "json"
Pokedex.destroy_all
number_of_pokedex = PokeApi.get(:pokedex).results

number_of_pokedex.count.times do |pokedex_number|
  pokedex_name = number_of_pokedex[pokedex_number].name
  Pokedex.create(pokedex_name: pokedex_name)
end

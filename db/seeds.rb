# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "poke-api-v2"
require "json"

# Pokedex.destroy_all
# Pokemon.destroy_all
# Type.destroy_all
# Evolution.destroy_all
Trainer.destroy_all

# number_of_pokemon = PokeApi.get(pokemon_species: { limit: 999 }).results
# number_of_pokemon.count.times do |pokemon|
#   pokemon_name = number_of_pokemon[pokemon].name
#   pokemon_flavor_text = PokeApi.get(pokemon_species: pokemon_name)
#                                .flavor_text_entries
#   pokemon_flavor_text.count.times do |flavor_text|
#     next unless pokemon_flavor_text[flavor_text].language.name == "en"

#     en_text = pokemon_flavor_text[flavor_text].flavor_text.strip
#     Pokemon.create(pokemon_name: pokemon_name, description: en_text)
#     break
#   end
#   evolution = PokeApi.get(pokemon_species: pokemon_name).evolves_from_species
#   if evolution
#     Evolution.create(evolution_name: pokemon_name, evolved_from: evolution.name)
#   end
# end

# number_of_types = PokeApi.get(:type).results
# number_of_types.count.times do |type|
#   pokemon_type = number_of_types[type].name.capitalize
#   Type.create(poke_type: pokemon_type)
# end

# number_of_pokedex = PokeApi.get(:pokedex).results
# number_of_pokedex.count.times do |pokedex_number|
#   pokedex_name = number_of_pokedex[pokedex_number].name
#   pokedex = Pokedex.create(pokedex_name: pokedex_name)
#   pokedex_entries = PokeApi.get(pokedex: pokedex_name).pokemon_entries
#   pokedex_entries.count.times do |pokemon|
#     pokemon_entry = pokedex_entries[pokemon].pokemon_species.name
#     pokemon_found = Pokemon.where(pokemon_name: pokemon_entry)
#     pokedex.pokemon << pokemon_found
#   end
# end

NUMBER_OF_TRAINERS = 5
NUMBER_OF_TRAINER_POKEMONS = 3
NUMBER_OF_TRAINERS.times do
  trainer_name = Faker::FunnyName.name
  trainer_descript = Faker::Lorem.sentence(word_count: 10, supplemental: true)
  trainer = Trainer.create(name: trainer_name, description: trainer_descript)
  NUMBER_OF_TRAINER_POKEMONS.times do
    random_pokemon = Pokemon.find(rand(700))
    trainers_pokemon = trainer.trainer_pokemon.create
    trainers_pokemon.pokemon = random_pokemon
    trainers_pokemon.save
  end
end

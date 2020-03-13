class CreateJoinTablePokemonPokedex < ActiveRecord::Migration[6.0]
  def change
    create_join_table :pokemons, :pokedexes do |t|
      # t.index [:pokemon_id, :pokedex_id]
      # t.index [:pokedex_id, :pokemon_id]
    end
  end
end

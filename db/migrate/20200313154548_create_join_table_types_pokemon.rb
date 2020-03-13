class CreateJoinTableTypesPokemon < ActiveRecord::Migration[6.0]
  def change
    create_join_table :types, :pokemons do |t|
      # t.index [:type_id, :pokemon_id]
      # t.index [:pokemon_id, :type_id]
    end
  end
end

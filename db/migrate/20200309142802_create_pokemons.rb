class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :pokemon_name
      t.string :description

      t.timestamps
    end
  end
end

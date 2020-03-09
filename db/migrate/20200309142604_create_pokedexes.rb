class CreatePokedexes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedexes do |t|
      t.string :pokemon_name

      t.timestamps
    end
  end
end

class CreatePokedexes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedexes do |t|
      t.string :pokedex_name

      t.timestamps
    end
  end
end

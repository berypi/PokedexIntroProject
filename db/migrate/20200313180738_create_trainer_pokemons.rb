class CreateTrainerPokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :trainer_pokemons do |t|
      t.references :pokemon, null: true, foreign_key: true
      t.references :trainer, null: true, foreign_key: true

      t.timestamps
    end
  end
end

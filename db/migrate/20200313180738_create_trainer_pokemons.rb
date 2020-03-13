class CreateTrainerPokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :trainer_pokemons do |t|

      t.timestamps
    end
  end
end

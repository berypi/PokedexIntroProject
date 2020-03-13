class CreateEvolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :evolutions do |t|
      t.string :evolution_name
      t.string :evolved_from

      t.timestamps
    end
  end
end

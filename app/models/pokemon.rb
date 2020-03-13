class Pokemon < ApplicationRecord
  has_and_belongs_to_many :type
  has_many :trainer_pokemon
end

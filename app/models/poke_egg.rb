class PokeEgg < ApplicationRecord
  belongs_to :user
  has_many :purchases
end

class Faction < ApplicationRecord
    has_many :cards
    has_many :npcs
end

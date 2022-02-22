class Card < ApplicationRecord
    belongs_to :ability
    belongs_to :combat_row
    belongs_to :effect
    belongs_to :faction
end

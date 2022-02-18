class Card < ApplicationRecord
    belongs_to :abilities
    belongs_to :combat_rows
    belongs_to :effects
    belongs_to :factions
end

class Npc < ApplicationRecord
    belongs_to :city
    belongs_to :faction
end

class FactionsController < ApplicationController
    def index
        @factions = Faction.all
        render json: @factions
    end
end

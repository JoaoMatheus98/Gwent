class FactionsController < ApplicationController
    def index
        @factions = Faction.all
        render json: @factions
    end

    def show
        @faction = Faction.find(params[:id])

        if @faction
            render json: @faction
        else
            render json: "Não encontrado"
        end
    end
end

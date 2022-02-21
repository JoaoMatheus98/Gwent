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

    def filter
    end

    private

    def faction_params
        params.require(:faction).permit(:name, :description)
    end
end

class NpcsController < ApplicationController
    def index
        @npcs = Npc.all
        render json: @npcs.to_json(include: [:city, :faction])
    end

    def show
        @npc = Npc.find(params[:id])
        render json: @npc.to_json(include: [:city, :faction])
    end

    def filter_by_factions
        @faction = Faction.where(name: params[:name])
        @npcs = Npc.where(faction_id: @faction.ids)
        
        unless @npcs.empty?
            render json: @npcs.to_json(include: [:city, :faction])
        else
            render json: "Npc não encontrado", status: :not_found
        end
    end

    def filter_by_cities
        @city = City.where(name: params[:name])
        @npcs = Npc.where(city_id: @city.ids)
        
        unless @npcs.empty?
            render json: @npcs.to_json(include: [:city, :faction])
        else
            render json: "Npc não encontrado", status: :not_found
        end
    end
end

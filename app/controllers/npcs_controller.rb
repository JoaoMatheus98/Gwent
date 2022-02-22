class NpcsController < ApplicationController
    def index
        @npcs = Npc.all
        render json: @npcs.to_json(include: [:city, :faction])
    end

    def show
        @npc = Npc.find(params[:id])
        render json: @npc.to_json(include: [:city, :faction])
    end

    def filter_by_citys
        @faction = Faction.where(name: params[:name])
        #@npcs = Npc.where(faction_id: @faction.id)
        #render json: @npcs
    end
end

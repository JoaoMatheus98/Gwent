class CombatRowsController < ApplicationController
    def index
        @CombatRows = CombatRow.all
        render json: @CombatRows
    end
end

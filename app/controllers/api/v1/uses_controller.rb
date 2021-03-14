class Api::V1::UsesController < ApplicationController
    def index
        uses = Use.all 
        render json:  UseSerializer.new(uses)
    end    
end

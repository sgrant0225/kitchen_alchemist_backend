class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all
    #render json: items
    render json: ItemSerializer.new(items)
  end   

  def show 
   item = Item.find(params[:id])
   render json: item
  end  

  

end

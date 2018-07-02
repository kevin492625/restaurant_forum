class RestaurantsController < ApplicationController

  
  def index

  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :opening_hours, :tel, :address, :description, :image, :category_id)
  end
end
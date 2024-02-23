class RestaurantsController < ApplicationController
   
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
      redirect_to @restaurant, notice: "Marcão criou o Restaurante"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: "Restaurante alterado"
    else
      render :new, status: :unprocessable_entity
    end
  end

end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category)
end

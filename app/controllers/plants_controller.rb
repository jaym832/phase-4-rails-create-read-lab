class PlantsController < ApplicationController

    def index
        plants= Plant.all
        render json: plants
    end

    def show
        
        plants= Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        # byebug
        # plant = Plant.create(name: params[:name],image: params[:image],price: params[:price])
        plant= Plant.create(params.permit(:name,:image,:price))
        # byebug
        render json: plant , status: :created       
    end

end

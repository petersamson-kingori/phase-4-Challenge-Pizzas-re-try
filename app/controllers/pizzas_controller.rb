class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all
    
        render json: pizzas, only: [:id, :name, :ingredients]
      end
      def show
        pizzas = Pizza.find_by(id: params[:id])
    
        if pizzas
          render json: pizzas, only: [:id, :name, :ingredients]
        else
          render json: { error: "Pizza not found" }, status: :not_found
        end
      end
end

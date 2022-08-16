class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find the cheese using the ID from the URL
    # send JSON response using that cheese object
    cheese = Cheese.find(params[:id])
    render json: cheese
  end
end

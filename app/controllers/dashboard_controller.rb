class DashboardController < ApplicationController
  def index
    @videogames = Videogame.all
    render json: @videogames
    end
  end

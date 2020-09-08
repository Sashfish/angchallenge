class Api::V1::VideogamesController < Api::V1::BaseController
  def index
    respond_with Videogame.all
  end

  def create
    #respond_with :api, :v1, Videogame.create(item_params)
    @videogame = Videogame.new(item_params)
    if @videogame.save
      render json: @videogame, status: :created, location: @videogame
    else
      render json: @videogame.errors, status: :unprocessable_entity
    end
  end

  def destroy
    respond_with Videogame.destroy(params[:id])
  end

  def update
    videogame = videogame.find(params["id"])
    item.update_attributes(item_params)
    respond_with videogame, json: videogame
  end

  private

  def item_params
    params.require(:item).permit(:id, :title, :features_handheld, :features_maxplayers, :features_multiplatform, :features_online, :metadata_genres, :metadata_licensed, :metadata_publishers, :metadata_sequel, :metrics_reviewscore, :metrics_sales, :metrics_usedprice, :release_console, :release_rating, :release_rerelease, :release_year, :length_allplaystyles_average, :length_allplaystyles_leisure, :length_allplaystyles_median, :length_allplaystyles_polled, :length_allplaystyles_rushed, :length_completionists_average, :length_completionists_leisure, :length_completionists_median, :length_compltetionists_polled, :length_completionists_rushed, :length_mainplusextras_average, :length_mainplusextras_leisure, :length_mainplusextras_median, :length_mainplusextras_polled, :length_mainplusextras_rushed, :length_mainstory_average, :length_mainstory_leisure, :length_mainstory_median, :length_mainstory_polled, :length_mainstory_rushed)
  end
end

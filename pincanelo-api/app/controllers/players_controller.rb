class PlayersController < ApplicationController
  before_action :set_player, only: %i[destroy show update update_elo_rating]
  def index
    render json: Player.all.order(elo_rating: :desc), status: :ok
  end

  def show
    render json: @player, status: :ok, serializer: PlayerCompleteSerializer
  end

  def create
    player = Player.new(create_params)
    if player.save
      render json: player, status: :created
    else
      render json: { errors: player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @player.update(update_params)
      render json: @player, status: :ok
    else
      render json: { errors: @player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update_elo_rating
    dto = UpdateEloRatingDto.new(params)
    if !dto.valid?
      render json: {errors: dto.errors.full_messages }, status: :unprocessable_entity
      return
    end
    if @player.update(elo_rating: params[:elo_rating])
    else
      render json: {errors: @player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    render json: {message: "Player deleted successfully"}, status: :ok
  end
  private
  
  def set_player
    @player = Player.find(params[:id])
  end

  def create_params
    params.require(:player).permit(:name)
  end

  def update_params
    params.require(:player).permit(:elo_rating,:name)
  end



end

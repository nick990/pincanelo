class PlayersController < ApplicationController
  def index
    render json: Player.all, status: :ok
  end

  def create
    player = Player.create(player_params)
    if player.save
      render json: player, status: :created
    else
      render json: { errors: player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  
  def player_params
    params.require(:player).permit(:name)
  end
end

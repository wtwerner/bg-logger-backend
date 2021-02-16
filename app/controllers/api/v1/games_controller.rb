class Api::V1::GamesController < ApplicationController
  before_action :set_game, only: [:show]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(user_id: current_user.id, bga_id: params[:bga_id], wishlist: params[:wishlist], owned: params[:owned])

    if @game.save
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    @game = Game.find_by(bga_id: params[:bga_id])
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game = Game.find_by(bga_id: params[:bga_id])
    if Game.destroy(@game.id)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:id, :bga_id, :user_id, :wishlist, :owned, :played)
    end
end

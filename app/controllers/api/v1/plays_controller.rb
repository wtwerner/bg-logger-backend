class Api::V1::PlaysController < ApplicationController
    before_action :set_play, only: [:show, :update, :destroy]

    # GET /games
    def index
      @plays = Play.all
  
      render json: @plays
    end
  
    # GET /games/1
    def show
      render json: @play
    end
  
    # POST /games
    def create
        @play = Play.new(
          user_id: current_user.id, 
          game_id: Game.find_by(bga_id: params[:game_id]).id, 
          date: params[:date], 
          players: params[:players], 
          duration: params[:duration], 
          winner: params[:winner], 
          notes: params[:notes]
        )
  
      if @play.save
        render json: @play
      else
        render json: @play.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /games/1
    def update
      if @play.update(play_params)
        render json: @play
      else
        render json: @play.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /games/1
    def destroy
      if Play.destroy(@play.id)
        render json: @play
      else
        render json: @play.errors, status: :unprocessable_entity
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
    def set_play
    @play = Play.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def play_params
    params.require(:play).permit(:id, :game_id, :user_id, :date, :winner, :notes, :duration, :players)
    end
end

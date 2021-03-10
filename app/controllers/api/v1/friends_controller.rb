class Api::V1::FriendsController < ApplicationController
    before_action :set_friend, only: [:show, :update, :destroy]

    # GET /games
    def index
      @friends = Friend.all
  
      render json: @friends
    end
  
    # GET /games/1
    def show
      render json: @friend
    end
  
    # POST /games
    def create
        @friend = Friend.new(
          user_id: current_user.id, 
          name: params[:name]
        )
  
      if @friend.save
        render json: @friend
      else
        render json: @friend.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /games/1
    def update
      if @friend.update(friend_params)
        render json: @friend
      else
        render json: @friend.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /games/1
    def destroy
      if Friend.destroy(@friend.id)
        render json: @friend
      else
        render json: @friend.errors, status: :unprocessable_entity
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
    def set_friend
    @friend = Friend.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def friend_params
    params.require(:friend).permit(:id, :name)
    end
end

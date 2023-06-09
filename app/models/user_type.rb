class UserType < ApplicationRecord
  class Api::PositionsController < ApplicationController
    def index
      @user_types = UserType.all
      render "index.json.jb"
    end
  
    def create
      @user_type = UserType.new(
        name: params[:name],
      )
      @user_type.save
      render "show.json.jb"
    end
  
    def show
      @user_type = UserType.find_by(id: params[:id])
      render "show.json.jb"
    end
  
    def update
      @user_type = UserType.find_by(id: params[:id])
      @user_type.name = params[:name] || @user_type.name
      @user_type.save
      render "show.json.jb"
    end
  
    def destroy
      user_type = UserType.find_by(id: params[:id])
      user_type.destroy
      render json: {message: "User Type successfully destroyed."}
    end
  end
  
end

class Api::PositionsController < ApplicationController
  def index
    @positions = Position.all
    render "index.json.jb"
  end

  def create
    @position = Position.new(
      name: params[:name],
      description: params[:description],
    )
    @position.save
    render "show.json.jb"
  end

  def show
    @position = Position.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @position = Position.find_by(id: params[:id])
    @position.name = params[:name] || @position.name
    @position.description = params[:description] || @position.description
    @position.save
    render "show.json.jb"
  end

  def destroy
    position = Position.find_by(id: params[:id])
    position.destroy
    render json: {message: "Position successfully destroyed."}
  end
end

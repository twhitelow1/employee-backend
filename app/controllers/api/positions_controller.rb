class Api::PositionsController < ApplicationController
  def index
    @positions = Position.all
    render "index.json.jb"
  end
end

class Api::OutletsController < ApplicationController
  def index
    @outlets = Outlet.all
    render "index.json.jb"
  end

  def create
    @outlet = Outlet.new(
      name: params[:name],
      description: params[:description],
      business_id: params[:business_id]

    )
    @outlet.save
    render "show.json.jb"
  end

  def show
    @outlet = Outlet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @outlet = Outlet.find_by(id: params[:id])
    @outlet.name = params[:name] || @outlet.name
    @outlet.description = params[:description] || @outlet.description
    @outlet.business_id = params[:business_id] || @outlet.business_id
    @outlet.save
    render "show.json.jb"
  end

  def destroy
    outlet = Outlet.find_by(id: params[:id])
    outlet.destroy
    render json: {message: "Outlet successfully destroyed."}
  end
end

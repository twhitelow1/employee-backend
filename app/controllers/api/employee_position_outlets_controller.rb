class Api::EmployeePositionOutletsController < ApplicationController
  def index
    @epos = EmployeePositionOutlet.all
    render "index.json.jb"
  end

  def create
    @epo = EmployeePositionOutlet.new(
      user_id: params[:user_id],
      outlet_id: params[:outlet_id],
      position_id: params[:position_id]
    )
    @epo.save
    render "show.json.jb"
  end

  def show
    @epo = EmployeePositionOutlet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @epo = EmployeePositionOutlet.find_by(id: params[:id])
    @epo.user_id = params[:user_id] || @epo.user_id
    @epo.position_id = params[:position_id] || @epo.position_id
    @epo.outlet_id = params[:outlet_id] || @epo.outlet_id

    @epo.save
    render "show.json.jb"
  end

  def destroy
    epo = EmployeePositionOutlet.find_by(id: params[:id])
    epo.destroy
    render json: {message: "Employee Position Outlet successfully destroyed."}
  end
end

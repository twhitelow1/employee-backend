class Api::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render "index.json.jb"
  end

  def create
    @schedule = Schedule.new(
      start_date: Date.parse(params[:startDate]),
      end_date: Date.parse(params[:endDate]),
      manager_id: params[:managerId],
      business_id: params[:businessId],
    )
    @schedule.save
    render "show.json.jb"
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.start_date = Date.parse(params[:startDate]) || @schedule.start_date
    @schedule.end_date = Date.parse(params[:endDate]) || @schedule.end_date 
    @schedule.manager_id = params[:managerId] || @schedule.manager_id
    @schedule.business_id = params[:businessId] || @schedule.business_id
    @schedule.save
    render "show.json.jb"
  end

  def destroy
    schedule = Schedule.find_by(id: params[:id])
    schedule.destroy
    render json: {message: "Schedule successfully destroyed."}
  end
end

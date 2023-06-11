class Api::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render "index.json.jb"
  end

  def create
    @schedule = Schedule.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      manager_id: params[:managerId],
      business_id: params[:businessId]
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
    @schedule.start_date = params[:start_date] || @schedule.start_date
    @schedule.end_date = params[:end_date] || @schedule.end_date 
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

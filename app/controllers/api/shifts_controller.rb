class Api::ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
    render "index.json.jb"
  end

  def create
    @shift = Shift.new(
      day: params[:day],
      date: params[:date],
      time_in: params[:timeIn],
      time_out: params[:timeOut],
      outlet_id: params[:outletId],
      position_id: params[:positionId],
      manager_id: params[:managerId],
      employee_id: params[:employeeId],
      schedule_id: params[:scheduleId],
      notes: params[:notes],
      short_note: params[:shortNote]

    )
    @shift.save
    render "show.json.jb"
  end

  def show
    @shift = Shift.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @shift = Shift.find_by(id: params[:id])
    @shift.day = params[:day] || @shift.day
    @shift.date = Date.parse(params[:date]) || @shift.date
    @shift.time_in = params[:timeIn] || @shift.time_in
    @shift.time_out = params[:timeOut] || @shift.time_out
    @shift.outlet_id = params[:outletId] || @shift.outlet_id
    @shift.position_id = params[:positionId] || @shift.position_id
    @shift.manager_id = params[:managerId] || @shift.manager_id
    @shift.employee_id = params[:employeeId] || @shift.employee_id
    @shift.schedule_id = params[:scheduleId] || @shift.schedule_id
    @shift.notes = params[:notes] || @shift.notes
    @shift.short_note = params[:shortNote] || @shift.short_note
    @shift.save
    render "show.json.jb"
  end

  def destroy
    shift = Shift.find_by(id: params[:id])
    shift.destroy
    render json: {message: "Shift successfully destroyed."}
  end
end

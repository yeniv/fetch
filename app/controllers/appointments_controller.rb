class AppointmentsController < ApplicationController
  def deny
  end

  def accept
  end

  def show
    @appointment = Appointment.new(params[:id])
  end
end

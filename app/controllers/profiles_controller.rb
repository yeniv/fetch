class ProfilesController < ApplicationController
  def show
    @user = current_user

    # appointments the user has made
    @appointments_made = @user.appointments

    # appointments the user has recieved
    @appointments_recieved = Appointment.where(dog_id: @user.dogs)
  end

  private

  def status_color(appointment)
    if appointment.status.downcase == "pending"
      return "badge badge-pill badge-primary"
    elsif appointment.status.downcase == "accepted"
      return "badge badge-pill badge-success"
    elsif appointment.status.downcase == "rejected"
      return "badge badge-pill badge-danger"
    else
      return "badge badge-pill badge-secondary"
    end
  end

  helper_method :status_color
end

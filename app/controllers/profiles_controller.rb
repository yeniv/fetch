class ProfilesController < ApplicationController
  def show
    @user = current_user

    # appointments the user has made
    @appointments_made = @user.appointments

    # appointments the user has recieved
    @appointments_recieved = Appointment.where(dog_id: @user.dogs)
  end

  def status_color
    "Hello"
  end
end

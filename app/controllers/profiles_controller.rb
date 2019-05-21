class ProfilesController < ApplicationController
  def show
    @user = current_user
    @appointments = @user.appointments
  end
end

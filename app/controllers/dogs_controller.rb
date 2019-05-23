class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @dogs = Dog.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @dogs = Dog.all
    end

    @dogs_markers = @dogs.where.not(latitude: nil, longitude: nil)

    @markers = @dogs_markers.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { dog: dog })
      }
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user

    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :gender, :age, :description, :location, :photo)
  end
end

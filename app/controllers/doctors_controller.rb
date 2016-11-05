class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def show
  end

  def create
    @doctor = Doctor.create(user_params)
  end

  def destroy
  end

  private

  def user_params
    params.require(:doctor).permit(:photo)
end

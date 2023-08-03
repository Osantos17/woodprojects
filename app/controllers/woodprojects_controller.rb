class WoodprojectsController < ApplicationController
  def show
    @woodproject = Woodproject.find_by(id: params[:id])
    render :show
  end

  def create
    @woodproject = Woodproject.new(
      proj: params[:proj],
      wood: params[:wood],
      finish: params[:finish],
      img: params[:img],
    )
    @woodproject.save
    render :show
  end

  def update
    @woodproject = Woodproject.find_by(id: params[:id])
    @woodproject.proj = params[:proj] || @woodproject.proj
    @woodproject.wood = params[:wood] || @woodproject.wood
    @woodproject.finish = params[:finish] || @woodproject.finish
    @woodproject.img = params[:img] || @woodproject.img
    @woodproject.save
    render :show
  end

  def destroy
    @woodproject = Woodproject.find_by(id: params[:id])
    @woodproject.destroy
    render json:{message:"project succesfully deleted"}
  end
end

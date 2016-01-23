class VisionsController < ApplicationController
  before_action :find_vision, only: [:show, :edit, :update, :destroy]

  # index to hold the visions
  def index
    @visions = Vision.all.order("created_at DESC")
  end

  #show visions
  def show
  end

  # new visions
  def new
    @vision = current_user.visions.build
  end

  # create visions
  def create
    @vision = current_user.visions.build(vision_params)

    if @vision.save
      redirect_to @vision, notice: "You made a new Vision!"
    else
      render 'new'
    end
  end

  #edit visions
  def edit
  end

  #update visions
  def update
    if @vision.update(vision_params)
      redirect_to @vision, notice: "You successfully updated your Vision!"
    else
      render 'edit'
    end
  end

  #delete visions
  def destroy
    @vision.destroy
    redirect_to root_path
  end

  private

  def vision_params
    params.require(:vision).permit(:title, :description)
  end

  def find_vision
    @vision = Vision.find(params[:id])
  end

end

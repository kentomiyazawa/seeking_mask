class MasksController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :home, :confirm, :question]
  before_action :move_to_index_if_not_sellor, only: :edit

  def index
    @users = User.all
    @search = User.ransack(params[:q])
    @results = @search.result
  end

  def show
    @user = User.find(params[:id])
    @masks = @user.masks
  end

  def new
    @mask = Mask.new
  end
  
  def create
    @mask = Mask.new(mask_params)
    if @mask.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end
  
  def edit
    @mask = Mask.find(params[:id])
  end

  def update
    @mask = Mask.find(params[:id])
    if @mask.update(mask_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    mask = Mask.find(params[:id])
    mask.destroy
    redirect_to user_path(current_user.id)
  end 

  def confirm
  end

  def home
  end

  def question
  end

  private

  def mask_params
    params.require(:mask).permit(:maker, :size, :stock, :price).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in? 
  end

  def move_to_index_if_not_sellor
    @mask = Mask.find(params[:id])
    redirect_to root_path unless @mask.user_id == current_user.id
  end

end

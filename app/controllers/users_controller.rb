class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @masks = @user.masks
  end

end

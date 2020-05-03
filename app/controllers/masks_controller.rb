class MasksController < ApplicationController
  def index
    @users = User.all
  end

  def confirm
  end
end

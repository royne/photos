class ProfilesController < ApplicationController
  def show
    @user = User.find_by_name(params[:id])

    unless @user
      redirect_to root_path
    end
  end
end

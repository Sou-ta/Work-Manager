class Public::UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
     redirect_to public_user_path(current_user)
  end

  private
  def user_params
      params.require(:user).permit(:name, :email)
  end

end

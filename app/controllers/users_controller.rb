class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to tasks_path, notice: 'You successfully signed up!'
    else
      
      render :new, status: :unprocessable_entity, notice: 'Your email address needs an @'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

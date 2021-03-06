class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if Rails.env.development?
          user.activate
          log_in user
          flash.now[:success] = "Account activated!"
          redirect_to user
      else
        @user.send_activation_email
        flash.now[:success] = "Activation mail sent to your mail id. Please activate your account."
        redirect_to new_user_path
      end
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end

end

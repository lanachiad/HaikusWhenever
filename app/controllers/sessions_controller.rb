class SessionsController < ApplicationController
  def new 
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/'
    else
      @errors = ["Incorrect login information"]
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to '/'
  end

  private
    def user_params
      params.require(:user).permit(:first_name,:last_name,:email, :password)
    end
end
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])

      session[:user_id] = user.id
      if user.us_role == 2
        redirect_to users_url
      else
        redirect_to user
      end

    else

      flash.now[:danger] = 'Bad email/password combination. Try again.'
      render 'new'

    end  
  end


  def destroy
    session.delete(:user_id)

    @current_user = nil

    redirect_to welcome_index_path

  end
end

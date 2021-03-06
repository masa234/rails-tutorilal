class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      remember(user)
      redirect_back_or(user)
    else
      swal { error 'ログインに失敗しました' }
      render:new
    end
  end
  
  def destroy
    log_out if sign_in?
    session.clear
    redirect_to "/"
  end
  

end
  
  



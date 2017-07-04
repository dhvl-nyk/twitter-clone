class SessionsController < ApplicationController
  def login
  	@user_present = User.where(["name = ? and password = ?",params["username_or_email"], params["login_password"]])
  	if @user_present.count > 0
      session['id']=@user_present.first.id
      redirect_to :controller => 'tweets', :action => 'index'
  	else
  	  flash.now[:alert] = "Invalid Username or Password"
  	  render :action => :home
  	end	
  end
end
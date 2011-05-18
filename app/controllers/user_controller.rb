class UserController < ApplicationController

def create_user

	@user = User.create(params[:userform])
	if @user.save
	redirect_to(:action=>'login')
	else
	render('create_user')
	end

end


  def login
  end

  def manage
  if !session[:user_id]
	redirect_to :action=> 'login'
else
redirect_to(:controller=>'survey',:action=>'manage')
	end
  end

  def logout
	  if session[:user_id]
		  reset_session
		  redirect_to :action=> 'login'
	  end
  end

end


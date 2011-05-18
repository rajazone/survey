class SurveyController < ApplicationController

def view
  end

def authenticate
		#User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
		@user = User.new(params[:userform])
        #find records with username,password
		valid_user = User.find(:first,:conditions => ["user_name = ? and password = ?",@user.user_name, @user.password])

        #if statement checks whether valid_user exists or not
		if valid_user
        #creates a session with username
			session[:user_id]=valid_user.user_name
	#@sessionid=session[:user_id]
        #redirects the user to our private page.
			redirect_to(:action => 'main')
		else
			flash[:notice] = "Invalid User/Password"
			redirect_to :action=> 'login'
		end
end


def main
render ("main")
  end
def create
	if ! session[:user_id]
	redirect_to(:controller=>"user", :action =>"login")
	else
	render ("create")
end	
end

def create_survey

	@surv = Survey.create(params[:surveyfor])
	if @user.save
	redirect_to(:action=>'main')
	else
	render('create_survey')
	end

end

  def manage
  end

def delete
end

def take
end



end

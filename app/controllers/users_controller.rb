class UsersController < ApplicationController
	def index
	end

	def list
		@users = User.all
	end

        def show
                @user = User.find(params[:id])
        end

	def create
	
 		@user = User.new(params[:user].permit(:name, :email))
 
  		if @user.save
    			redirect_to @user
  		else
   			 render 'new'
  		end
	end

	def new
		@user = User.new
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
	
	def search
		@user = User.new
	end	

	def unsubscribe
		@user = User.find_by(email: params[:user][:email])
		
		if (@user == nil)
			@user = User.new
			flash.now[:error] = "Could not find the email address you provided."
			render 'search' and return
		end
		
		if @user.destroy
			flash[:notice] = "You've been unsubscribed."
			redirect_to users_path
		end		
	end
private
	def user_params
		params.require(:user).permit(:name, :email)
	end
end

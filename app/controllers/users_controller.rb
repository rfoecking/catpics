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

	def unsubscribe
		@user = User.find(params[:id])
	end
private
	def user_params
		params.require(:user).permit(:name, :email)
	end
end

class UsersController < ApplicationController

	def new 
		@user=User.new
	end

	def create
		@user=User.new(user_params)
		if @user.save==true
			flash[:notice]="success"
			redirect_to root_path
		else
			flash[:notice]="重新輸入"
			redirect_to new_user_path
		end
	end

	def destroy
		@user=User.find(user_params)
		@user.destroy
		redirect_to root_path
	end

	private
	def user_params
		params.require(:user).permit(:user_name,:password,:limit)
	end

end
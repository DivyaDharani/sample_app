class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def show  #associated with GET req to /users
    @user=User.find(params[:id])
  end
  def create #associated with POST req to /users
	@user=User.new(params[:user])
	if(@user.save)
		flash[:success] = "Welcome to the Sample App!"
		redirect_to @user
	else
		render 'new'
	end
  end 
			
end

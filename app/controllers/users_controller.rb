class UsersController < ApplicationController
 def index
 @users = User.all 
 end

 def show
 # @users = Users.get(params[:users])
 end

def new
@users = User.new(params[:user])
 if @users.save
# Handle a successful save.
 else
    @title = "Sign up"
    render 'new'
end 
end 
 
 def create
    @users = User.new(params[:user])
 if @users.save
# Handle a successful save.
 else
    @title = "Sign up"
    render 'new'
end 	
 end

def edit
@users = User.put
end 

def update
 #nothing has been typed here - please stay tune 
end 

def destroy
@users.destroy
end
end 
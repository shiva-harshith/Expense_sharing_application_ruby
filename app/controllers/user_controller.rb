#require 'add_user.rb'
class UserController < ApplicationController
  #require 'add_user.rb'
  skip_before_action :verify_authenticity_token
  def home
    render json: "Welcome to the home page of expense sharing application"
  end
  def getUsers
     render json: UserServices::ShowAllUsers.new.call
   end
  def addUser
    # UserServices::AddUser.new(params[:name],params[:email],params[:m_number],params[:g_number]).call
    UserServices::AddUser.new(params[:name],params[:email],params[:m_number],params[:g_number]).call
    #newUser.save
    render json: "Successfully Added"
  end

end

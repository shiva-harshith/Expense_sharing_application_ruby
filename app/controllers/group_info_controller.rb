class GroupInfoController < ApplicationController
  skip_before_action :verify_authenticity_token
  def addNewGroup
    GroupServices::AddGroup.new(params[:g_number]).call
    render json: "Group Successfully added"
  end
  def showAllGroups
    render :json =>GroupServices::ShowAllGroups.new.call
  end
end

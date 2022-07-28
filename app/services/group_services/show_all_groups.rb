class GroupServices::ShowAllGroups
  def call
    return GroupInfo.all
  end
end

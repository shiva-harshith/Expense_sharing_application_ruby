class GroupServices::AddGroup
  @g_number
  def initialize(g_number)
    @g_number = g_number
  end

  def call
    newGroup = GroupInfo.new(g_number: @g_number)
    newGroup.save
  end

end
class UserServices::AddUser
  @name
  @email
  @m_number
  @g_number

  def initialize(name,email,m_number,g_number)
    @name=name
    @email=email
    @m_number=m_number
    @g_number=g_number
  end

  def call
    user = User.new(name: @name,email: @email,m_number: @m_number,g_number:@g_number)
    user.save
    #return user.id
  end
end
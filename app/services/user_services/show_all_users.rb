class UserServices::ShowAllUsers
  def initialize
    super
  end
  def call
    return User.all
  end
end

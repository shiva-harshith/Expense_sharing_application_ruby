class TransactionServices::GetRowsByGroup
  @g_number
  def initialize(g_number)
    @g_number = g_number
  end

  def call
    rows = User.where(g_number: @g_number)
    return rows
  end

end

class TransactionServices::UpdateTransaction
  @id_src
  @id_dest
  @amount
  def initialize(id_src,id_dest,amount)
    @id_src = id_src
    @id_dest = id_dest
    @amount = amount
  end

  def call
    record = Transaction.find_by(id_src: @id_src,id_dest: @id_dest)
    #record.amount += @amount
    record.update(:amount=> record.amount+@amount)
  end
end

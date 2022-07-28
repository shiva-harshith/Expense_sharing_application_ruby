class TransactionServices::AddTransaction
  @id_src
  @id_dest
  @amount
  def initialize(id_src,id_dest,amount)
    @id_src = id_src
    @id_dest = id_dest
    @amount = amount
  end

  def call
    newTransaction = Transaction.new(id_src: @id_src,id_dest: @id_dest,amount: @amount)
    newTransaction.save
  end
end

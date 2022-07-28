class TransactionServices::DoesPairExist
  @id_src
  @id_dest
  def initialize(id_src , id_dest)
    @id_src = id_src
    @id_dest = id_dest
  end

  def call
    #return Transaction.where("id_src": @id_src, "userName2": @id_dest).present?
    return Transaction.where(id_src: @id_src, id_dest: @id_dest).present?
  end

end

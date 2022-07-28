class TransactionServices::ShowAllTransactions
  def showAllTransactions
    return Transaction.all
  end
end

class TransactionLog

  def create_transactions(transaction)
    Transactions.new(transaction[0], transaction[1], transaction[2])
  end
end

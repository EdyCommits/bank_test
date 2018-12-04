class TransactionLog

  attr_reader :all_transactions

  def initialize
    @all_transactions = []
  end

  def create_transactions(transaction)
    Transactions.new(transaction[0], transaction[1], transaction[2])
  end

  def save(transaction)
    @all_transactions << transaction
  end
end

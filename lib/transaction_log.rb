class TransactionLog

  attr_reader :all_transactions

  def initialize
    @all_transactions = []
  end

  def create_transactions(transaction)
    Transactions.new(deposit: transaction[0], withdraw: transaction[1], current_balance: transaction[2])
  end

  def save(transaction)
    @all_transactions << transaction
  end

  def add(transaction)
    save(create_transactions(transaction))
  end
end

require_relative 'transaction'

class TransactionLog
  
  attr_reader :all_transactions

  def initialize
    @all_transactions = []
  end

  def add(deposit: 0, withdraw: 0, current_balance:)
    save(Transaction.new(deposit: deposit, withdraw: withdraw, current_balance: current_balance))
  end

private
  def save(transaction)
    @all_transactions << transaction
  end

end

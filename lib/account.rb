require_relative 'transactions'
require_relative 'transaction_log'
require_relative 'statement'

class Account

  INITIAL_BALANCE = 0

  def initialize(transaction_log = TransactionLog.new)
    @balance = INITIAL_BALANCE
    @transaction_log = transaction_log
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @transaction_log.add([amount, 0, @balance])
  end

  def withdraw(amount)
    raise "Not enough funds!" if amount > @balance
    @balance -= amount
    @transaction_log.add([0, amount, @balance])
  end

end

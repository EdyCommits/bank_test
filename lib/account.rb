require_relative 'transaction_log'
require_relative 'statement_printer'

class Account

  INITIAL_BALANCE = 0

  def initialize(transaction_log: TransactionLog.new, statement_printer: StatementPrinter.new)
    @balance = INITIAL_BALANCE
    @transaction_log = transaction_log
    @statement_printer = statement_printer
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @transaction_log.add(deposit: amount, current_balance: @balance)
  end

  def withdraw(amount)
    raise "Not enough funds!" if amount > @balance
    @balance -= amount
    @transaction_log.add(withdraw: amount, current_balance: @balance)
  end

  def print_statement
    @statement_printer.print(@transaction_log.all_transactions)
  end

end

class Transactions

  attr_reader :date, :credit, :debit, :current_balance

  def initialize(date = Time.now.strftime('%d/%m/%Y'), deposit, withdraw, current_balance)
    @date = date
    @credit = deposit
    @debit = withdraw
    @current_balance = current_balance
  end
end

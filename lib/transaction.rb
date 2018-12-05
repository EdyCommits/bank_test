class Transaction

  attr_reader :date, :credit, :debit, :current_balance

  def initialize(deposit:, withdraw:, current_balance:, date: Time.now.strftime('%d/%m/%Y'))
    @date = date
    @credit = deposit
    @debit = withdraw
    @current_balance = current_balance
  end
  
end

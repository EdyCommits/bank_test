class Transactions

  attr_reader :date, :credit, :debit

  def initialize(date = Time.now.strftime('%d/%m/%Y'), deposit, withdraw)
    @date = date
    @credit = deposit
    @debit = withdraw
  end
end

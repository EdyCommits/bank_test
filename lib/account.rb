class Account

INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    @balance = current_balance + amount
  end

  def withdraw(amount)
    @balance = current_balance - amount
  end
end

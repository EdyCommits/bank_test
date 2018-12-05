class Account

  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Not enough funds!" if amount > @balance
    @balance -= amount
  end

end

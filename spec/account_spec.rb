require 'account'
describe 'Account' do

  it 'starts with an empty account' do
    account = Account.new

    expect(account.current_balance).to eq(0)
  end

  it 'allows to deposit money in' do
    account = Account.new
    account.deposit(5)

    expect(account.current_balance).to eq(5)
  end

  it 'allows to withdraw money' do
    account = Account.new
    account.deposit(5)
    account.withdraw(2)

    expect(account.current_balance).to eq(3)
  end

  it 'does not allow to overdraw' do
    account = Account.new
    account.deposit(50)

    expect { account.withdraw(100) }.to raise_error 'Not enough funds!'
  end

  it 'deducts and adds money to current balance' do
    account = Account.new
    account.deposit(50)
    account.withdraw(25)
    account.deposit(1)

    expect(account.current_balance).to eq(26)
  end
end

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

end

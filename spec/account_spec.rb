require 'account'
describe 'Account' do
  it 'Starts with an empty account' do
    account = Account.new

    expect(account.balance).to eq(0)
  end
end

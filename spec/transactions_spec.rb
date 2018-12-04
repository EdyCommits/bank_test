require 'transactions'
describe Transactions do

  let(:date) { double :date }
  subject { Transactions.new(date) }

  it 'stores date of a transaction' do
    expect(subject.date).to eq date
  end

end

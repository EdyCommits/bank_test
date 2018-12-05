require 'transactions'
describe Transactions do

  let(:date) { double :date }
  subject { Transactions.new(100, 10, 90, date) }

  it 'stores date of a transaction' do
    expect(subject.date).to eq date
  end

  it 'stores deposited amount as credit' do
    expect(subject.credit).to eq 100
  end

  it 'stores withdrawn amount as debit' do
    expect(subject.debit).to eq 10
  end

  it 'stores balance' do
    expect(subject.current_balance).to eq 90
  end
end

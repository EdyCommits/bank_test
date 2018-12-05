require 'statement'
require 'transactions'

describe Statement do

  let(:date) { double :date }
  let(:another_date) { double :another_date }

  let(:transaction) do
    double(:transaction, credit: 100, debit: 0, balance: 100, date: date)
  end

  let(:transaction_two) do
    double(:transaction_two, credit: 10, debit: 0, balance: 110, date: another_date)
  end

  it 'outputs transactions in correct format' do
    expect { subject.print([transaction]) }.to output("Date || Credit || Debit || Balance
      \n#{date} || 100 || 0 || 100\n").to_stdout
  end
end

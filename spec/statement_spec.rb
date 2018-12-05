require 'statement'

describe Statement do

  let(:date) { double :date }
  let(:another_date) { double :another_date }

  it 'outputs transactions in correct format' do
    transaction = double(:transaction, date: date, credit: 100, debit: 0, balance: 100)
    another_transaction = double(:another_transaction, date: another_date, credit: 0, debit: 20, balance: 80)

    expect { subject.print([transaction, another_transaction]) }.to output("Date || Credit || Debit || Balance\n#{date} || 100 || 0 || 100\n#{another_date} || 0 || 20 || 80\n").to_stdout
  end
end

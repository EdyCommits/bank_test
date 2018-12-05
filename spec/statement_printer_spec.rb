require 'statement_printer'

describe StatementPrinter do

  it 'outputs transactions in correct format' do
    past = Time.utc(2017,10,21)
    latest = Time.utc(2017,10,22)

    latest_transaction = double(:latest_transaction, date: latest, credit: 100, debit: 0, balance: 100)
    past_transaction = double(:old_transaction, date: past, credit: 0, debit: 20, balance: 80)

    expect { subject.print([latest_transaction, past_transaction]) }.to output("Date || Credit || Debit || Balance\n22/10/2017 || 100 || 0 || 100\n21/10/2017 || 0 || 20 || 80\n").to_stdout
  end

  it 'always outputs transactions in descending order (by date)' do
    past = Time.utc(2017,10,21)
    latest = Time.utc(2017,10,22)

    latest_transaction = double(:latest_transaction, date: latest, credit: 100, debit: 0, balance: 100)
    past_transaction = double(:old_transaction, date: past, credit: 0, debit: 20, balance: 80)

    expect { subject.print([past_transaction, latest_transaction]) }.to output("Date || Credit || Debit || Balance\n22/10/2017 || 100 || 0 || 100\n21/10/2017 || 0 || 20 || 80\n").to_stdout
  end

end

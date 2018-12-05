require 'account'

describe 'Account Statement' do

  it 'prints the account statement' do
    transaction_log = TransactionLog.new
    statement_printer_spy = spy(:statement_printer)

    account = Account.new(transaction_log: transaction_log, statement_printer: statement_printer_spy)
    account.deposit(50)
    account.withdraw(25)
    account.deposit(1)

    account.print_statement

    expect(statement_printer_spy).to have_received(:print).with(transaction_log.all_transactions).ordered
  end

end

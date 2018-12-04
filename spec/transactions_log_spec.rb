require 'transaction_log'

describe TransactionLog do

  let(:transaction) { double :transaction }
  let(:transaction_another) { double :transaction_another }

  it 'creates a transction' do
    subject.create_transactions([100, 10, 90])
  end
end

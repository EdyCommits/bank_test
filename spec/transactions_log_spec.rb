require 'transaction_log'

describe TransactionLog do

  let(:transaction) { double :transaction }
  let(:transaction_another) { double :transaction_another }

  it 'creates a transction' do
    subject.create_transactions([100, 10, 90])
  end

  it 'stores transactions in an array' do
    subject.save(transaction)
    expect(subject.all_transactions[0]).to eq transaction
  end

  it 'saves multiple transactions into the array' do
    subject.save(transaction)
    subject.save(transaction_another)

    expect(subject.all_transactions[0]).to eq transaction
    expect(subject.all_transactions[1]).to eq transaction_another

  end
end

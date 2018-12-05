require 'transaction_log'

describe TransactionLog do

  it 'starts empty' do
    expect(subject.all_transactions.length).to eq 0
  end

  it 'saves multiple transactions into the array' do
    subject.add(deposit: 10, withdraw: 0, current_balance: 20)
    subject.add(deposit: 0, withdraw: 20, current_balance: 30)

    expect(subject.all_transactions.length).to eq 2
    expect(subject.all_transactions[0].credit).to eq 10
    expect(subject.all_transactions[0].debit).to eq 0
    expect(subject.all_transactions[0].current_balance).to eq 20

    expect(subject.all_transactions[1].credit).to eq 0
    expect(subject.all_transactions[1].debit).to eq 20
    expect(subject.all_transactions[1].current_balance).to eq 30
  end
end

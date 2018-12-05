class StatementPrinter

  def print(transactions)
    puts 'Date || Credit || Debit || Balance'

    transactions.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

end

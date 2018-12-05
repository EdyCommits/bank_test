class StatementPrinter

  def print(transactions)
    puts 'Date || Credit || Debit || Balance'

    transactions.sort! { |x,y| y.date <=> x.date }.each do |transaction|
      puts "#{transaction.date.strftime('%d/%m/%Y')} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

end

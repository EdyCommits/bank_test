# Bank tech_test

IRB app which displays account total, allows to withdraw and deposit money, displays statement.

## Set Up
- Clone the repo git@github.com:Edy1988/bank_test.git
- Run the command `bundle` to install dependencies

## MVP User Stories

```
As a user,
So I can manage my money
I have an account.

As a user,
So I can use my account,
I can deposit money.

As a user,
So I can use my account,
I can withdraw money.

As a user,
So I can keep track of my funds,
I can view statement in this format:
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

```
### To set up the project

Clone the ripo git@github.com:Edy1988/bank_test.git
and then run:

```
$ bundle
```

### To run the app in IRB:

* Open `irb` and run `require './lib/account.rb'`
*  Follow the instructions below:
```
account = Account.new
=> creates a new bank account instance

account.deposit(100)
 => adds funds to account

account.withdraw(10)
 => deducts funds from account

account.print_statement
=> Date || Credit || Debit || Balance
05/12/2018 || 0 || 10 || 90
05/12/2018 || 100 || 0 || 100
```
### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```

## Future updates
1. Add confirmation when transaction was made.
2. Fixed 'line too long' linter errors.

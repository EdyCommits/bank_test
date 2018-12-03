# Bank tech_test

IRB app which displays account total, allows to withdraw and deposit money, displays statement.

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

## Future User Stories

```
As a user,
So I can make sure I don't pay charges,
I am not able to create negative balance.

As a user,
So I can make sure I don't go into overdraft,
I have a warning if I have £10 or less.

```

## Domain Model
place holder
![domain model](./public/images/diagram2.png)

## How to use

### To set up the project

Clone this repository and then run:

```
$ bundle
```

### To run the app:

```
$ ruby app.rb
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

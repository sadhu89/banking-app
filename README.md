ex0038: Create a simple banking application
===========================================

Inspiration for this challenge taken from [Rails AntiPatterns: Best Practice Ruby on Rails Refactoring](https://books.google.com.au/books?id=i6mZ0HBDPzsC)

## Challenge

Create a very simple banking application that can do the following
things:

- Create accounts
- Deposit funds into those accounts
- Withdraw funds from those accounts
- Can send funds to/from other accounts


## Intent

Things that we should expect to see in the solution include:

- correct modeling of the domain (as specified in the challenge)
- how to interact with the system (ie. it needs to respond to live user
  input)

It will be important that you develop with your normal workflow, by
writing tests, following SOLID principles, etc. This is not a "let's
hack something together" challenge. We will be using this code in the
following week's challenge to either change or add functionality for a
new requirement (which is yet to be disclosed) :smile:


## Guidelines

- You can use any language you like.
- You do not need to assume long-term persistent storage as part of the
  solution, but you do need to at least maintain state for the length of
  time the application is running.
- Your input/output can be anything you choose, but it does have to be
  user interactable. eg. if you choose Elm, you'll need to use input
  fields, if you use C you could use STDIN/STDOUT.
- Assume a root level of access whilst running the application. eg.
  the accepted input is allowed to send/receive/deposit/withdraw to and
  from any created account.
- Assume a single currency for now.

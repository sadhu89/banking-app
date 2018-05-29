# frozen_string_literal: true

class Account
  class NotEnoughBalance < StandardError; end

  attr_reader :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise NotEnoughBalance if amount > @balance
    @balance -= amount
  end
end

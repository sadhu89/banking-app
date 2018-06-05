# frozen_string_literal: true

class Account
  class NotEnoughBalance < StandardError; end

  attr_reader :id, :balance
  @@counter = 0

  def initialize(initial_balance)
    @balance = initial_balance
    @@counter += 1
    @id = @@counter
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise NotEnoughBalance if amount > @balance
    @balance -= amount
  end
end

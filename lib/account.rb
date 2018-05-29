# frozen_string_literal: true

class Account

  attr_reader :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

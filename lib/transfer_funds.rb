# frozen_string_literal: true

class TransferFunds

  def initialize(from_account, to_account)
    @from_account = from_account
    @to_account = to_account
  end

  def execute(amount)
    @from_account.withdraw(amount)
    @to_account.deposit(amount)
  end
end

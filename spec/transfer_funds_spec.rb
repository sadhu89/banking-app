# frozen_string_literal: true

require 'transfer_funds'
require 'account'

describe TransferFunds do
  subject(:transfer_funds) { described_class.new(from_account, to_account) }

  let(:from_account) { Account.new(100) }
  let(:to_account) { Account.new(100) }

  describe '#execute' do
    specify do
      transfer_funds.execute(50)
      expect(from_account.balance).to eq 50
      expect(to_account.balance).to eq 150
    end
  end
end

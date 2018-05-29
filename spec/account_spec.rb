# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new(initial_balance) }

  let(:initial_balance) { 100 }

  describe '#balance' do
    subject { account.balance }

    it {is_expected.to eq 100 }
  end

  describe '#deposit' do
    specify do
      account.deposit(100)
      expect(account.balance).to eq 200
    end
  end

  describe '#withdraw' do
    specify do
      account.withdraw(50)
      expect(account.balance).to eq 50
    end
  end
end

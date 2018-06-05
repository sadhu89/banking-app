# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new(initial_balance) }

  let(:initial_balance) { 100 }

  describe '#balance' do
    subject { account.balance }

    it { is_expected.to eq 100 }
  end

  describe '#deposit' do
    specify do
      account.deposit(100)
      expect(account.balance).to eq 200
    end
  end

  describe '#withdraw' do
    let(:withdraw) { account.withdraw(amount) }
    let(:amount) { 50 }

    specify do
      withdraw
      expect(account.balance).to eq 50
    end

    context 'when the balance is not enough' do
      let(:amount) { 150 }

      specify do
        expect { withdraw }.to raise_error(described_class::NotEnoughBalance)
      end
    end
  end

  describe 'generates ids sequentially' do
    let(:first_account) { described_class.new(100) }
    let(:second_account) { described_class.new(200) }

    specify do
      first_account
      second_account
      expect(second_account.id).to eq(first_account.id + 1)
    end
  end
end

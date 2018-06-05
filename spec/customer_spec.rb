# frozen_string_literal: true

require 'customer'

describe Customer do
  subject(:customer) { described_class.new('Carlos', 'Rojas', 'carlos.sadhu@gmail.com', '0403931842') }

  describe 'first_name' do
    subject { customer.first_name }

    specify do
      customer.first_name = 'Mickey'
      expect(customer.first_name).to eq 'Mickey'
    end
  end

  describe 'last_name' do
    subject { customer.last_name }

    specify do
      customer.last_name = 'Mouse'
      expect(customer.last_name).to eq 'Mouse'
    end
  end

  describe 'email' do
    subject { customer.email }

    specify do
      customer.email = 'mickey.mouse@bellroy.com'
      expect(customer.email).to eq 'mickey.mouse@bellroy.com'
    end
  end

  describe 'phone' do
    subject { customer.phone }

    specify do
      customer.phone = '66666666666'
      expect(customer.phone).to eq '66666666666'
    end
  end
end

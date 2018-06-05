# frozen_string_literal: true

require 'customer'

describe Customer do
  subject(:customer) { described_class.new('Carlos', 'Rojas', 'carlos.sadhu@gmail.com', '0403931842') }

  describe 'first_name accesors' do
    subject { customer.first_name }

    specify do
      customer.first_name = 'Mickey'
      expect(customer.first_name).to eq 'Mickey'
    end
  end

  describe 'last_name accesors' do
    subject { customer.last_name }

    specify do
      customer.last_name = 'Mouse'
      expect(customer.last_name).to eq 'Mouse'
    end
  end

  describe 'email accesors' do
    subject { customer.email }

    specify do
      customer.email = 'mickey.mouse@bellroy.com'
      expect(customer.email).to eq 'mickey.mouse@bellroy.com'
    end
  end

  describe 'phone accesors' do
    subject { customer.phone }

    specify do
      customer.phone = '66666666666'
      expect(customer.phone).to eq '66666666666'
    end
  end

  describe 'generates ids sequentially' do
    let(:first_customer) { described_class.new('Peter', 'Parker', 'spidey@bellroy.com', '123456789') }
    let(:second_customer) { described_class.new('Peter', 'Parker II', 'spidey2@bellroy.com', '9876543219') }

    specify do
      first_customer
      second_customer
      expect(second_customer.id).to eq(first_customer.id + 1)
    end
  end
end

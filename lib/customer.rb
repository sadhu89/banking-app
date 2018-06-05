# frozen_string_literal: true

class Customer
  attr_accessor :first_name, :last_name, :email, :phone
  attr_reader :id
  @@counter = 0

  def initialize(first_name, last_name, email, phone)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @@counter = @@counter + 1
    @id = @@counter
  end
end

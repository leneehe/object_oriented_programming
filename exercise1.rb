#Bank Account
class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 0.02
  end

  def deposit=(amount)
    @balance += amount
  end

  def withdraw=(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= @interest_rate + 1
    return @balance.round(2)
  end
end

account01 = BankAccount.new
puts account01.deposit = 500.67
puts account01.withdraw = 200
puts account01.gain_interest

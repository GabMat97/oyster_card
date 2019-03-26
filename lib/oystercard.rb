class Oystercard
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
  def add
    @balance += 1
  end
end

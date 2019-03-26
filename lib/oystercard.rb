class Oystercard
  LIMIT = 100
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
  def add(amount)
    if @balance + amount >= LIMIT
      fail("Too much cash!")
    else
      @balance += amount
    end
  end
end

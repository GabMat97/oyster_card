class Oystercard
  LIMIT = 100
  attr_accessor :balance, :state
  def initialize(balance, state)
    @balance = balance
    @state = false
  end
  def add(amount)
    if @balance + amount >= LIMIT
      fail("Too much cash!")
    else
      @balance += amount
    end
  end
  def deduct(amount)
    @balance -= amount
  end
  def touch_in
    @state = true
  end
  def touch_out
    @state = false
  end
end

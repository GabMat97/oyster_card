class Oystercard
  LIMIT = 100
  MINIMUM_BALANCE = 0
  attr_accessor :balance, :state, :area
  def initialize(balance, state, area)
    @balance = balance
    @state = state
    @area = area
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
    if @balance - 1 <= MINIMUM_BALANCE
      fail("Not enough cash!")
    else
      @state = true
    end
  end
  def touch_out
    deduct(1)
    @state = false
  end
  def travel(place)
    @area = place
  end
end

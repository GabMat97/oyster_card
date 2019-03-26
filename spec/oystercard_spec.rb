require_relative '../lib/oystercard'

describe Oystercard do
  it "tests for instantiating" do
    card = Oystercard.new(50, false)
    expect(card.balance).to eq(50)
  end
  it "tests for add method" do
    card = Oystercard.new(50, false)
    expect(card.add(1)).to eq(51)
  end
  it "tests for add if at maximum balance" do
    card = Oystercard.new(100, false)
    expect{ card.add(1) }.to raise_error("Too much cash!")
  end
  it "tests for charging the balance" do
    card = Oystercard.new(50, false)
    expect(card.deduct(1)).to eq(49)
  end
  it "tests for touch in method" do
    card = Oystercard.new(50, false)
    expect(card.touch_in).to eq true
  end
  it "tests for touch out method" do
    card = Oystercard.new(50, true)
    expect(card.touch_out).to eq false
  end
  it "tests for touch in when not cash" do
    card = Oystercard.new(0, false)
    expect{ card.touch_in }.to raise_error("Not enough cash!")
  end
end

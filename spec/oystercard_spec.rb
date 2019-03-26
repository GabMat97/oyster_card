require_relative '../lib/oystercard'

describe Oystercard do
  it "tests for instantiating" do
    card = Oystercard.new(50, "in")
    expect(card.balance).to eq(50)
  end
  it "tests for add method" do
    card = Oystercard.new(50, "in")
    expect(card.add(1)).to eq(51)
  end
  it "tests for add if at maximum balance" do
    card = Oystercard.new(100, "in")
    expect{ card.add(1) }.to raise_error("Too much cash!")
  end
  it "tests for charging the balance" do
    card = Oystercard.new(50, "in")
    expect(card.deduct(1)).to eq(49)
  end
  it "tests for touch in method" do
    card = Oystercard.new(50, "out")
    expect(card.touch_in).to eq(50, "in")
  end
  it "tests for touch out method" do
    card = Oystercard.new(50, "in")
    expect(card.touch_out).to eq(50, "out")
  end
end

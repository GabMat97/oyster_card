require_relative '../lib/oystercard'

describe Oystercard do
  it "tests for instantiating" do
    card = Oystercard.new(50, false, "Clapham")
    expect(card.balance).to eq(50)
  end
  it "tests for add method" do
    card = Oystercard.new(50, false, "Clapham")
    expect(card.add(1)).to eq(51)
  end
  it "tests for add if at maximum balance" do
    card = Oystercard.new(100, false, "Clapham")
    expect{ card.add(1) }.to raise_error("Too much cash!")
  end
  it "tests for charging the balance" do
    card = Oystercard.new(50, false, "Clapham")
    expect(card.deduct(1)).to eq(49)
  end
  it "tests for touch in method" do
    card = Oystercard.new(50, false, "Clapham")
    expect(card.touch_in).to eq true
  end
  it "tests for touch out method" do
    card = Oystercard.new(50, true, "Clapham")
    expect(card.touch_out).to eq false
  end
  it "tests for touch in when not enough cash" do
    card = Oystercard.new(0, false, "Clapham")
    expect{ card.touch_in }.to raise_error("Not enough cash!")
  end
  it "expects area to change after travelling" do
    card = Oystercard.new(50, false, "Clapham")
    expect(card.travel("Central")).to eq("Central")
  end
end

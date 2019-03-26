require_relative '../lib/oystercard'

describe Oystercard do
  it "tests for instantiating" do
    card = Oystercard.new(50)
    expect(card.balance).to eq(50)
  end
  it "tests for add method" do
    card = Oystercard.new(50)
    expect(card.add(1)).to eq(51)
  end
  it "tests for add if at maximum balance" do
    card = Oystercard.new(100)
    expect{ card.add(1) }.to raise_error("Too much cash!")
  end
end

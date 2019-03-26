require_relative '../lib/oystercard'

describe RSpec do
  it "tests for instantiating" do
    card = Oystercard.new(50)
    expect(card.balance).to eq(50)
  end
  it "tests for add method" do
    card = Oystercard.new(50)
    expect(card.add).to eq(51)
  end
end

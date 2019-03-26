require_relative '../lib/oystercard'

describe RSpec do
  it "tests for instantiating" do
    card = Oystercard.new(50)
    expect(card.balance).to eq(50)
  end
end

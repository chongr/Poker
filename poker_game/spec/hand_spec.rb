require 'hand'

describe Hand do

  let(:card1) {double("card")}
  let(:card2) {double("card")}
  let(:card3) {double("card")}
  let(:card4) {double("card")}
  let(:card5) {double("card")}

  let(:deck) {double("deck", :draw => [card1, card2, card3])}
  let(:hand) {Hand.new(deck)}

  describe "Hand#starting" do

    # let(:deck) {double("deck", :draw => [card1, card2, card3])}
    # let(:hand) {Hand.new(deck)}
    it "starts with 5 cards" do

      expect(hand.cards_in_hand).to eq([card1, card2, card3])
    end
  end

  describe "Hand#discard" do

    it "removes two cards" do
      hand.discard(card1, card2)
      expect(hand.cards_in_hand).to eq([card3])
    end

  end

  # describe "Hand#replenish" do
  #
  #   it "replenished your hand till its full (5)" do
  #     hand.discard(card1, card2)
  #
  # 
  #     expect().to eq()
  #   end
  # end


end

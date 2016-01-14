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

  aceofhearts = Card.new(:heart,:ace)
  aceofspades = Card.new(:spade, :ace)
  aceofdiamonds = Card.new(:diamond, :ace)
  tenofdiamonds = Card.new(:diamond, :ten)

  describe "Hand#three_kind" do
    let(:deck1) {double("deck", :draw => [aceofhearts, tenofdiamonds, aceofspades])}
    let(:hand1) {Hand.new(deck1)}
    it "returns true" do
      expect(hand1.three_kind?).to eq(false)
    end

  end




end

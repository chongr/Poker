require 'card'

describe Card do

  describe "self.Card#suits" do

    it "returns array of all suits" do
      expect(Card.suits).to eq([:heart, :spade, :diamond, :club])
    end

  end

  describe "self.Card#values" do

    it "returns array of all values" do
      expect(Card.values).to eq({two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 11, queen: 12, king: 13, ace: 14})
    end
  end

  describe "Card#card_value" do

    let(:card) { Card.new(:heart, :king) }

    it "returns value of a king" do
      expect(card.card_value).to eq(13)
    end
  end

end

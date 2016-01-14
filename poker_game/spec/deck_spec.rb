require 'deck'

describe Deck do

  describe "initialize" do

    it "generates a deck of 52 cards" do
      expect(subject.deck.length).to eq(52)
    end
    
  end


  describe "Deck#draw" do

    it "draws 5 cards" do
      subject.draw(5)
      expect(subject.deck.length).to eq(47)
    end

  end

end

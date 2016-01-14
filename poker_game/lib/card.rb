class Card
  SUITS = [:heart, :spade, :diamond, :club]

  VALUES = {two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 11, queen: 12, king: 13, ace: 14}

  def self.suits
    SUITS
  end

  def self.values
    VALUES
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def card_value
    return VALUES[@value]
  end



end

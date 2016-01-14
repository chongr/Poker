require_relative 'card'

class Deck

  attr_reader :deck

  def initialize
    @deck = []
    populate
    shuffle!
  end

  def populate
    Card.suits.each do |suit|
      Card.values.each do |keys, values|
        @deck << Card.new(suit, keys)
      end
    end
  end

  def shuffle!
    @deck.shuffle!
  end

  def draw(num)
    hand = []
      num.times do
        hand << @deck.shift
      end
    hand
  end


end

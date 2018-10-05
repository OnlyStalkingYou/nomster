class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

end

class Deck
  RANKS = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
  SUITS = [:Spades, :Clubs, :Hearts, :Diamonds]

  def initialize
    @card = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << "#{rank} of #{suit}"
      end
    end
  end


  def shuffle
    @cards.shuffle!
  end

  def deal
    top = @cards.shift
    puts top
  end
end

deck = Deck.new
deck.shuffle
deck.deal
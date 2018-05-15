class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end

end

card = Card.new(10, :spades)
card.output_card
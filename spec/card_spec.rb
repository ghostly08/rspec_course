class Card
 attr_accessor :rank, :suit # Provide a method on every instants of 'rank' and 'suit' to avoid "undefined method error"

  def initialize(rank, suit)
    @rank = rank # to recived data, otherwise will ge 'nil'
    @suit = suit
  end
end

RSpec.describe Card do # 'Card' is just an string. Better use Card that is referd to the class.
  #before do # it is a hook and is equal to before(:exemple)
  #   @card = Card.new('Ace', 'Spades')
  # end

  #def card # This is a helper method. We can write any Ruby code in the body of the "describe" like this.
  #   Card.new('Ace', 'Spades')
  # end

  let(:card) { Card.new('Ace', 'Spades') } # Separete differents examples, lazie loading
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 } These two runs only if "x" or "y" are invoqued in any of the examples (lazie loading)

  it 'has a rank and that rank can change' do # "it" represents de behavior of this element
    expect(card.rank).to eq('Ace') # rank can change because the "attr_accessor"
    card.rank = 'Queen' # this "card" is the same car invoqued in line 22
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do # "it" represents de behavior of this element
    expect(card.suit).to eq('Spades')
  end

  # :::::: Custom error message :::::::::::
  it 'has a custom error message' do # "it" represents de behavior of this element
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I espected #{comparison} but I got #{card.suit}"
  end
end

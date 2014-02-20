#!usr/bin/env ruby

require "./Player"
require "./Hand"

class Dealer < Player
  def initialize(deck, name)
    @deck = deck
    @name = name
  end
  
  def shuffle_deck
    @deck.shuffle
  end
  
  def deal_hand(number_of_cards)
    warn "Too few cards" if @deck.size < number_of_cards
    cards = @deck.take(number_of_cards)
    Hand.new(cards)
  end
end
#!usr/bin/env ruby

require_relative "../Cards/Player"

class BlackJackPlayer < Player
  def decide_to
    if !(state == "bust")
      puts "Hit or Stick?"
      choice = gets.chomp.downcase
      abort("Bye.") if choice == "q" || choice == "quit"
      return (choice == "hit" || choice == "h") ? "hit" : "stick"
    end
  end
  
  def result
    sum = 0
    @hand.cards.each do |card|
      sum += card.value 
    end
    sum = -1 if sum > 21
    return sum
  end
  
  def ace_value
    # Adding varible ace value
    if @hands.aces.size > 0
      if result - 10
    end
  end
  
  def state
    result == -1 ? "bust" : result
  end
  
  def show_state
    puts (!(state == "bust")) ? "Result: #{state}" : "You are bust"
  end
end
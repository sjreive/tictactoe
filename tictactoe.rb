#!/usr/bin/env ruby

# class info
class Board
  include Enumerable
  attr_accessor :player1, :player2, :board 
  
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @board = [[1,2,3],[4,5,6],[7,8,9]]
  end

  def update_board
   
  end

  def display_board
     @board.each do |r|
      puts r.each {|p| p}.join(" ")
    end
  end


  def your_turn
    puts "Your turn, Player 1! Where would you like to put you X?"
    puts "(Pick a number available on the board)"
    position = gets.chomp.to_i
    @board = @board.map do |num|
      if num == position
        'X'
      else
        num
      end
    end
  end

end

class Player
  include Enumerable
  attr_accessor :position
  
  def initialize
    @turns = 0
  end

end

#playing the game
puts "Get Ready to Play TIC TAC TOE!"
@player1= Player.new
@player2= Player.new
@board= Board.new(@player1, @player2)
@board.display_board

@board.your_turn
@board.display_board
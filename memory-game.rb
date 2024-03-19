require "byebug"
require_relative "board.rb"
require_relative "card.rb"

class Game

    def initialize
        @board = Board.new
        @previous_guess = nil
    end

    def make_guess

        arr = []
        numbers = "1234567890"

        p "Please enter the position of the card you'd like to flip (e.g., '2,3')"
        
        gets.chomp.each_char do |ele|
            arr << ele.to_i if numbers.include?(ele)
        end

        arr
    end


    def play

        @board.populate

        until @board.won?

            @board.render

            if @previous_guess == nil
                first_guess = self.make_guess
                @board.reveal(first_guess)
                @previous_guess = first_guess
            end

            if @previous_guess != nil
                second_guess = self.make_guess
                @board.reveal(second_guess)
                @previous_guess == nil
            end



        end

    end

end
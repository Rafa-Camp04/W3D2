require_relative "card.rb"

class Board

    attr_reader :grid

    def initialize(size)
        @grid = Array.new(size) { Array.new(size) }
    end


    def populate
        5.times { @grid << Card.new(("a".."z").to_a.sample) }
    end


    def render 
        p self.grid
    end


    def won?
        return false if @grid.any? { |card| !card.== }
    end


    def reveal(guessed_pos)

        row, col = guessed_pos

        if !self.== 
            self.grid[row][col].reveal
            return self.grid[row][col].value
        end

    end


    def guessed_pos

        arr = []

        p "Please enter the position of the card you'd like to flip (e.g., '2,3')"
        
        gets.chomp.each do |ele|
            arr << ele if ele.class == Integer
        end

        arr
    end


    def [](pos)

        row, col = pos

        self.grid[row][col]

    end


    def []=(pos, value)

        row, col = pos 

        self.grid[row][col] = value

    end



end
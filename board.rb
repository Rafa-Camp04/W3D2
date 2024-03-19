require "byebug"
require_relative "card.rb"

class Board

    attr_reader :grid

    def initialize
        @grid = Array.new(4) { Array.new(4) }
    end


    def populate

        string = "AABBCCDDEEFFGGHH"
        arr = string.split("")
        arr = arr.shuffle

        (0...@grid.length).each do |row|
            (0...@grid.length).each do |col|
                @grid[row][col] = Card.new(arr.pop)
            end
        end

        self.render
    end


    def render 
        self.grid.each do |row|
            p row
            puts
        end
    end


    def won?
        self.grid.each do |subarr|
            return true if subarr.all? { |card| card.face_up == true}
        end
    
        false
    end


    def reveal(guessed_pos)
        
        row, col = guessed_pos

        self.grid[row][col].reveal
        self.render
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
require "byebug"

class Card

    attr_accessor :face_up

    def initialize(face_value)

        @face_value = face_value
        @face_up = false

    end


    def value
       return @face_value if @face_up == true
    end


    def hide
        self.face_up = false
    end


    def reveal
        self.face_up = true
    end


    def to_s
        
        return @face_value if @face_up
        return " "

    end


    def ==(card2)
        self.face_value == card2.face_value
    end


    def inspect

       return @face_value if @face_up
       return "_"

    end

end
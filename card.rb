

class Card

    attr_reader

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


    def to_s(arg)
        arg.to_s
    end


    def ==
        @face_up == true
    end



end
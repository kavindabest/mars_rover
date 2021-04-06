# Instance of this class can track x,y position on given grid
module MarsRover
  class Position
    attr_accessor :x, :y
    def initialize(x, y)
      @x = x
      @y = y
    end
  end
end

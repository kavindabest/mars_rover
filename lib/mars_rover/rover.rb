module MarsRover
  class Rover
    attr_reader :land, :current_position
    def initialize(land, x, y, orientation)
      @land = land
      @current_position = RoverPosition.new(x, y, orientation)
    end

    def move(value)
      if value == 'M'
        current_position.change_position(land)
      else
        current_position.change_orientation(value)
      end
    end
  end
end

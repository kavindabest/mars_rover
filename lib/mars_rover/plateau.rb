module MarsRover
  class Plateau
    attr_reader :lower_left, :upper_right
    def initialize(lower_left, upper_right)
      @lower_left = Position.new(lower_left[0], lower_left[1])
      @upper_right = Position.new(upper_right[0], upper_right[1])
    end

    def in_the_area?(new_value, eje)
      new_value.between?(lower_left.public_send(eje), upper_right.public_send(eje))
    end
  end
end

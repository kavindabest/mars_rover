module MarsRover
  class RoverPosition < Position
    attr_accessor :orientation
    def initialize(x, y, orientation)
      super(x, y)
      @orientation = orientation
    end

    def change_position(land)
      eje, new_value = calculate_eje_with_new_value()
      if land.in_the_area?(new_value, eje)
        public_send("#{eje}=", new_value)
      else
        puts 'Value is outside of the authorized areas'
      end
    end

    def change_orientation(new_orientation)
      orientation_guide = orientation_guide()
      self.orientation = orientation_guide[orientation][new_orientation]
    end

    private

    def orientation_guide
      {
        'N' => { 'L' => 'W', 'R' => 'E' },
        'E' => { 'L' => 'N', 'R' => 'S' },
        'S' => { 'L' => 'E', 'R' => 'W' },
        'W' => { 'L' => 'S', 'R' => 'N' }
      }
    end

    def position_guide
      {
        'N' => ['y', '+'],
        'E' => ['x', '+'],
        'S' => ['y', '-'],
        'W' => ['x', '-']
      }
    end

    def calculate_eje_with_new_value
      position_guide = position_guide()
      guide_arry = position_guide[orientation]
      current_attribute_value = public_send(guide_arry[0])
      new_value = current_attribute_value.public_send(guide_arry[1], 1)
      [guide_arry[0], new_value]
    end
  end
end

require 'pry'
require 'mars_rover/version'
require 'mars_rover/position'
require 'mars_rover/rover_position'
require 'mars_rover/rover'
require 'mars_rover/plateau'

module MarsRover
  class Error < StandardError; end
  def self.start_process
    data = []
    File.readlines('./data.txt').each do |line|
      data << line
    end
    plateau_data = data.shift.strip.split(' ').collect{ |x| x.to_i }
    plateau = Plateau.new([0, 0], plateau_data)
    (data.length / 2).times do
      rover_pos = data.shift.strip.split(' ')
      rover = Rover.new(plateau, rover_pos[0].to_i, rover_pos[1].to_i, rover_pos[2])
      data.shift.strip.split('').each do |c|
        rover.move(c)
      end
      puts "#{rover.current_position.x} #{rover.current_position.y} #{rover.current_position.orientation}"
    end
  end
end

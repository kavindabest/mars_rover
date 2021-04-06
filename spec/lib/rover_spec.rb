RSpec.describe 'MarsRover Rover' do
  subject { MarsRover::Rover.new('plateau', 1, 2, 'N') }
  it 'expect to create rover object' do
    expect(subject.land).to eq('plateau')
    expect(subject.current_position.x).to eq(1)
    expect(subject.current_position.y).to eq(2)
    expect(subject.current_position.orientation).to eq('N')
  end
  it "expect to call change_position when params is 'M' " do
    expect_any_instance_of(MarsRover::RoverPosition).to receive(:change_position)
      .with('plateau')
    subject.move('M')
  end
  it "expect to call change_orientation when params isn't 'M' " do
    expect_any_instance_of(MarsRover::RoverPosition).to receive(:change_orientation)
      .with('L')
    subject.move('L')
  end
end

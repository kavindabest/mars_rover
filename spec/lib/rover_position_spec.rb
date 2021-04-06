RSpec.describe 'MarsRover Rover Position' do
  subject { MarsRover::RoverPosition.new(1, 2, 'N') }
  it 'expect to create rover object' do
    expect(subject.x).to eq(1)
    expect(subject.y).to eq(2)
    expect(subject.orientation).to eq('N')
  end
  it 'expect to change_position' do
    double = double('in_the_area?' => true)
    expect(subject.change_position(double)).to eq(3)
  end
  it 'expect to puts error when postion is outside' do
    double = double('in_the_area?' => false)
    expect(STDOUT).to receive(:puts).with('Value is outside of the authorized areas')
    subject.change_position(double)
  end
  it 'expect to change_orientation' do
    expect(subject.change_orientation('L')).to eq('W')
  end
  it 'expect to calculate_eje_with_new_value' do
    expect(subject.send(:calculate_eje_with_new_value)).to eq(['y', 3])
  end
end

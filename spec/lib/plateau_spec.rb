RSpec.describe 'MarsRover Plateau' do
  subject { MarsRover::Plateau.new([0, 0], [5, 5]) }
  it 'expect to create plateau object' do
    expect(subject.lower_left.x).to eq(0)
    expect(subject.lower_left.y).to eq(0)
    expect(subject.upper_right.x).to eq(5)
    expect(subject.upper_right.y).to eq(5)
  end
  it 'expect to  in_the_area?' do
    expect(subject.in_the_area?(3, 'x')).to be_truthy
  end
  it 'expect to not in_the_area? ' do
    expect(subject.in_the_area?(8, 'y')).to be_falsey
  end
end

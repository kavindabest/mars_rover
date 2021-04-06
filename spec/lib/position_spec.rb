RSpec.describe 'MarsRover Position' do
  subject { MarsRover::Position.new(1, 4) }
  it 'expect to creat position object' do
    expect(subject.x).to eq(1)
    expect(subject.y).to eq(4)
  end
end

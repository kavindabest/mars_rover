RSpec.describe 'MarsRover Version' do
  it 'has a version number' do
    expect(MarsRover::VERSION).not_to be nil
  end

  it 'expect version number' do
    expect(MarsRover::VERSION).to eq('0.1.0')
  end
end

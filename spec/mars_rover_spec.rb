RSpec.describe MarsRover do

  it 'expec two rover put correct positions' do
    data = ["5 5\n", "1 2 N\n", "LMLMLMLMM\n", "3 3 E\n", "MMRMMRMRRM\n"]
    allow(File).to receive(:readlines).and_return(data)
    expect(STDOUT).to receive(:puts).with('1 3 N')
    expect(STDOUT).to receive(:puts).with('5 1 E')
    MarsRover.start_process
  end
end

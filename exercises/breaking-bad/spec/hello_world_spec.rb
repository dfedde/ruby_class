require 'rspec'

describe 'bin/breaking-bad' do
  describe "#hello" do
    it 'will print Hello arguments!!' do
      load 'bin/breaking-bad'
      $stdout = StringIO.new
      hello('cats')
      expect($stdout.string.chomp).to eq 'Hello cats!!'
    end
  end

  it 'will print "Hello World!!"' do
    $stdout = StringIO.new
    load 'bin/breaking-bad'
    expect($stdout.string.chomp).to eq 'Hello World!!'
  end
end


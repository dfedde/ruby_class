require 'rspec'

describe 'bin/terrafirma_acquaintance' do
  it 'will print "Hello World!!"' do
    $stdout = StringIO.new
    load 'bin/terrafirma_acquaintance'
    expect($stdout.string.chomp).to eq 'Hello World!!'
  end
end


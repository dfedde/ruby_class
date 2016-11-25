require 'rspec'

describe 'bin/terrafirma_acquaintance' do
  it 'will print "Hello World!!"' do
    output = `bin/terrafirma_acquaintance`
    expect(output.chomp).to eq 'Hello World!!'
  end
end


require 'rspec'
require_relative '../lib/mileage-calculator'

describe 'bin/mileage-calculator' do
  let(:distance) {10}
  let(:gallons)  {5}
  let(:input) {"#{distance}\n#{gallons}\n"}
  let(:path) {File.expand_path('../../bin/mileage-calculator', __FILE__) }
  subject {`echo '#{input}' | #{path}`}


  it 'will ask for how far you drove' do
    is_expected.to include 'how far did you drive? '
  end

  it 'will ask how may gallons of gas you used' do
    is_expected.to include 'how many gallons of gas did you use? '
  end

  context 'when your distance is 10 and your gallons used is 5' do
    it 'it will tell you your mileage' do
      is_expected.to match(/your mileage was 2\.0MPG/)
    end
  end

  context 'when your distance is 12 and your gallons used is 3' do
    let(:distance) {12}
    let(:gallons)  {3}
    it 'it will tell you your mileage' do
      is_expected.to match(/your mileage was 4\.0MPG/)
    end
  end
end

describe 'lib/mileage-calculator.rb' do
  discribe '#calculate_mileage' do
    let(:mileage)  {distance/gallons.to_f}
    subject {calculate_mileage(gallons, distance)}

    context 'when your distance is 12 and your gallons used is 3' do
      let(:distance) {6}
      let(:gallons)  {12}

      it 'will calculate mileage' do
        is_expected.to eq mileage
      end
    end

    context 'when your distance is 10 and your gallons used is 5' do
      let(:distance) {10}
      let(:gallons)  {5}

      it 'will calculate mileage' do
        is_expected.to eq mileage
      end
    end
  end
end

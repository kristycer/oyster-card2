require 'station'

describe Station do

  subject { described_class.new("old street", 1) }
  it 'checks if there is a name for the station' do
  expect(subject.name).to eq("old street")
end
 it 'checks if there is a zone for the station' do
   expect(subject.zone).to eq(1)
 end


end

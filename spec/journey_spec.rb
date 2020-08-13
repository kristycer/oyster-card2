require 'journey'

describe Journey do

  let(:station) { double :station, zone: 1 }

  it 'has a penalty fare by default' do
    expect(subject.fare).to eq(Journey::PENALTY_FARE)
  end

  it 'knows if a journey is not complete' do
    expect(subject).not_to be_complete
  end

  it 'returns self when exiting a journey' do
    expect(subject.exit(station)).to eq(subject)
  end

  context 'given an entry station' do
    subject { described_class.new(entry_station: station) }

    it 'has an entry station' do
      expect(subject.entry_station).to eq station
    
    end
    it 'returns a penalty fare if no exit station given' do
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end 

 context 'given an exit station' do
   let(:other_station) { double :other_station }

    before do
      subject.exit(other_station)
      end

   it 'calculates a fare' do
     expect(subject.fare).to eq 1
  
    end

    it 'calculates a fare for zone 3 to 5' do

      update_zones(3,5)
      expect(subject.fare).to eq 3
    end

    it 'knows if a journey is complete' do
      expect(subject).to be_complete

    end
  end 
    def update_zones(entry_zone, exit_zone)
      allow(station).to receive(:zone).and_return(entry_zone)
      allow(other_station).to receive(:zone).and_return(exit_zone)
   end
  end 
end 
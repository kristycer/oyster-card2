require 'journey_log'

describe JourneyLog do

    let(:journey){ double :journey}
    let(:station){ double :station }
    let(:journey_class){double :journey_class, new: journey }
    subject { described_class.new(journey_class: journey_class)}
    # subject(:currrent_journey) {described_class.new(entry_station)}

    # it { is_expected.to respond_to :journey_class }
    # it { is_expected.to respond_to(:start).with(1).argument }
    subject(:journey) { described_class.new}
    
      describe '#start' do
          it 'starts a journey' do
              expect(journey_class).to receive(:start)
              journey_class.start(station)
           end 

        #  it 'starts a journey' do
        #     expect(subject.start(entry_station)).to eq entry_station

        #  end 

        #  it 'records a journey' do
        #      allow(journey_class).to receive(:start).and_return journey
        #      journey_class.start(station)
        #      expect(journey_class.journeys).to include journey
        #  end 
        it 'stores the journey in an array' do
            expect(journey.journeys).to eq []
        end 
    end 
end 

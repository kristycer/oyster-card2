require 'journey_log'

describe JourneyLog do

    let(:exit_station){ double :station }
    let(:journey){ double :journey}
    let(:station){ double :station }
    let(:journey_class){double :journey_class, new: journey }
    subject { described_class.new(journey_class: journey_class)}
  
    subject(:journey) { described_class.new}
    
      describe '#start' do
          it 'starts a journey' do
              expect(journey_class).to receive(:start)
              journey_class.start(station)
           end 

        it 'stores the journey in an array' do
            expect(journey.journeys).to eq []
        end 

        describe '#finish' do
          it 'adds exit station to the journey_log' do
            subject.start(station)
            subject.finish(exit_station)
            expect(subject.journeys).to include({entry_station: station}, {exit_station: exit_station})
          end
        end

    end 
end 

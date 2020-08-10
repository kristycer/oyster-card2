require 'oystercard'

describe Oystercard do
    it 'has a balance' do
        expect(subject.balance).to eq(11)
    end 

describe '#top_up' do
    
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'raises an error if maximum balance reached' do
      maximum_balance = Oystercard::MAXIMUM_BALANCE
      subject.top_up maximum_balance
      expect { subject.top_up 1 }.to raise_error 'Maximum balance of #{maximum_balance} reached'

        end
    end
end
 
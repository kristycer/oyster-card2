require 'oystercard'

describe Oystercard do
    it 'has a balance' do
        expect(subject.balance).to eq(0)
    end 
    

    it { is_expected.to respond_to(:deduct).with(1).argument }

    it 'deducts an amount from the balance' do
      subject.top_up(5)
      expect { subject.deduct 5}.to change { subject.balance }.by(-5)
    end

describe '#top_up' do
    
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'raises an error if maximum balance reached' do
      maximum_balance = Oystercard::MAXIMUM_BALANCE
      subject.top_up (maximum_balance)
      expect { subject.top_up 1 }.to raise_error 'Maximum balance of 90 reached'

        end
    end
  
  describe '#touch_in' do
    it { is_expected.to respond_to(:touch_in) }

    it 'raises an error: not enough funds' do
    expect{ subject.touch_in }.to raise_error 'not enough funds: top up'
      end 
    end 
  
describe '#touch_out' do
    it { is_expected.to respond_to(:touch_out) }
    
    it { is_expected.to respond_to(:in_journey) }

it 'checks if the user was charged' do
    subject.top_up(10)
    expect { subject.touch_out }.to change{ subject.balance }.by (-Oystercard::MINIMUM_BALANCE)
  end 
end 
describe '#in_journey' do
    it 'checks if user is on the journey' do
    subject.top_up(10)
    subject.touch_in
    expect(subject.in_journey).to eq(true)
  end 
 end
end 
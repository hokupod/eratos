require 'rspec'
require './eratos'

describe Eratos do
  describe '#sift' do
    subject { Eratos.sift base_num }
    let(:base_num) { 30 }
    it { is_expected.to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29' }
  end
end

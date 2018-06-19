require 'rspec'
require './eratos'

describe Eratos do
  describe '#sift' do
    subject { eratos.sift.join(', ') }
    let(:eratos) { Eratos.new base_num }
    context 'base_num = 30' do
      let(:base_num) { 30 }
      it { is_expected.to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29' }
    end
    # ref: https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9
    context 'base_num = 120' do
      let(:base_num) { 120 }
      it { is_expected.to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113' }
    end
  end
end

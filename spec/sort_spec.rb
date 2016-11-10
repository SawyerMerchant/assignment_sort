require 'sort'

describe 'Sort' do

  let(:test_sort) {Sort.new([4,3,2,1,5])}
  let(:sorted) {[1,2,3,4,5]}

  describe '#initialize' do

    it 'takes an array' do
      expect(test_sort.arr).to be_a(Array)
    end

  end

  describe '#insertion_sort' do

    it 'sorts an array' do
      expect(test_sort.insertion_sort).to eq(sorted)
    end

  end

end

require 'rspec'
require 'spec_helper'
require 'array_exercises'

describe Array do
  describe 'Array#my_uniq' do
    it "removes a single duplicate" do
      expect([1,2,3,1].my_uniq).to eq([1,2,3])
    end

    it "removes multiple duplicates" do
      expect([1,2,3,1,2].my_uniq).to eq([1,2,3])
    end

    it "returns original when no duplicates" do
      expect([1,2,3].my_uniq).to eq([1,2,3])
    end
  end

  describe 'Array#two_sum' do
    it "return a single pair that sums to zero" do
      expect([1,2,3,-1].two_sum).to eq([[0,3]])
    end

    it "return two pairs that sums to zero" do
      expect([1,2,3,-2,-1].two_sum).to eq([[0,4],[1,3]])
    end

    it "returns no pairs if no pairs sum to zero" do
      expect([1,2,3].two_sum).to eq([])
    end

  end

  describe "Array#my_transpose" do
    it "transposes a 2x2" do
      expect([[1,2], [3,4]].my_transpose).to eq([[1,3], [2,4]])
    end

    it "transposes a 3x3" do
      expect([[1,2,3],[4,5,6],[7,8,9]].my_transpose).to eq ([[1,4,7],[2,5,8],[3,6,9]])
    end

  end

  describe "Array#stock_picker" do
    it "returns most profitable day" do
      expect([1, 5, 3, 10, 8].stock_picker).to eq([0, 3])
    end
  end

end

require 'rspec'
require 'spec_helper'
require 'tower'


describe Tower do

  let(:tower) {Tower.new}

  it "starts with 3 arrays & 4 discs" do
    expect(subject.pegs).to eq([[2,1,0],[],[]])
  end

  it "selects the top disc first" do
    expect(subject.select_disk(0)).to eq(0)
  end

  it "selects the top disc and changes the peg order" do
    subject.select_disk(0)

    expect(subject.pegs).to eq([[2,1],[],[]])
  end

  it "places a disc to desired peg" do

    subject.place_disk(1, 3)
    #just for testing
    expect(subject.pegs).to eq([[2,1,0],[3],[]])
  end

  it "rejects placing a larger disk" do
    expect {subject.place_disk(0, 3)}.to raise_error("placed large disk on small disk")
  end

  it "returns true when win condition is met" do

    subject.pegs = [[],[2,1,0],[]]
    expect(subject.won?).to eq(true)
  end

  it "returns true when win condition is met" do

    subject.pegs = [[],[],[2,1,0]]
    expect(subject.won?).to eq(true)
  end

  it "returns false win condition is NOT met" do

    subject.pegs = [[2],[1],[0]]
    expect(subject.won?).to eq(false)
  end

  describe "tests i/o" do
    before do
      $stdin = StringIO.new("0\n2\n")
    end

    after do
      $stdin = STDIN
    end

    it "moves a disk" do
      subject.play_turn
      expect(subject.pegs).to eq([[2,1],[0],[]])
    end
  end





end

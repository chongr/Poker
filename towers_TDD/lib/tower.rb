require 'byebug'
class Tower

  attr_accessor :pegs

  def initialize
    @pegs = [[2,1,0],[],[]]
  end

  def select_disk(peg_num)
    pegs[peg_num].pop
  end

  def place_disk(peg_num, disk)
    raise "placed large disk on small disk" if pegs[peg_num].last && disk > pegs[peg_num].last
    pegs[peg_num].push(disk)
  end

  def won?
    if pegs == [[],[2,1,0],[]] || pegs == [[],[],[2,1,0]]
      return true
    end
    false
  end

  def play_turn
    p @pegs
    p "choose a peg to grab a disk from"
    input = gets.chomp.to_i
    grabbed_disk = select_disk(input)
    p "choose a peg to place disk #{grabbed_disk}"
    input = gets.chomp.to_i
    place_disk(input, grabbed_disk)
  end

  def play_game
    until won?
      begin
      play_turn
      rescue
        retry
      end
    end
    p "yay!"
  end

end

if __FILE__ == $0
  Tower.new.play_game
end

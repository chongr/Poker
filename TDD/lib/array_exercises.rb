class Array

  def my_uniq

    duplicates = []
    self.each do |num|
      duplicates << num unless duplicates.include?(num)
    end
    duplicates
  end

  def two_sum
    pairs = []

    self.length.times do |i|
      self.drop(i+1).each_with_index do |el, j|
        pairs << [i, j + i + 1] if self[i] + el == 0
      end
    end

    pairs
  end

  def my_transpose
    result = Array.new(self.length) {Array.new()}

    for i in (0..self.length-1)
      for j in (0..self.length-1)
        result[i] << self[j][i]
      end
    end
    result
  end

  def stock_picker
    result = []
    largest_diff = 0
    i = 0

    while i < self.length
      j = self.length - 1
      while j > i
        if self[j] - self[i] > largest_diff
          largest_diff = self[j] - self[i]
          result = [i, j]
        end
        j -= 1
      end
      i += 1
    end

    result

  end


end

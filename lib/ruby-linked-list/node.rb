class Node
  attr_accessor :value, :next

  def initialize(value = nil, next_ = nil)
    @value = value
    @next = next_
  end
end

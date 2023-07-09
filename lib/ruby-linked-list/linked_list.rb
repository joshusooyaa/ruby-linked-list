require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = head
    @tail = head
  end

  def append(value)
    if @head.nil?
      @head = @tail = Node.new(value)
      @size = 1
    else
      node = Node.new(value)
      @tail.next = node
      @tail = node
    end
  end

  def prepend(value)
    if head.nil?
      @head = @tail = Node.new(value)
      @size = 1
    else
      node = Node.new(value)
      node.next = @head
      @head = node
    end
  end

  def size
    curr_node = @head
    count = 0
    until curr_node.nil?
      count += 1
      curr_node = curr_node.next
    end
    count
  end

  def at(index)
    count = 0
    curr_node = @head
    curr_node = curr_node&.next until (count += 1) > index
    curr_node
  end
end
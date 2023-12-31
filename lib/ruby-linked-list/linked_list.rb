require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
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

  def pop
    if @head == @tail
      @head = @tail = nil
    else
      index = size - 2 # Get second to last element
      node = at(index)
      node.next = nil
      @tail = node
    end
  end

  def contains?(value)
    true unless find(value).nil?
  end

  def find(value)
    curr_node = @head
    index = 0
    until curr_node.nil?
      return index if curr_node.value == value

      curr_node = curr_node.next
      index += 1
    end
  end

  def to_s
    string = ''
    curr_node = @head
    until curr_node.nil?
      string += "( #{curr_node.value} ) -> "
      curr_node = curr_node.next
    end
    string.concat('nil')
  end

  def insert_at(value, index)
    return self.prepend(value) if index <= 0

    return append(value) if index >= size

    curr_node = at(index - 1)
    node_to_insert = Node.new(value)
    node_to_insert.next = curr_node.next
    curr_node.next = node_to_insert
  end

  def shift
    return if head.nil?

    temp = @head.next
    @head.next = nil
    @head = temp
  end

  def remove_at(index)
    return shift if index <= 0

    return pop if index >= size

    curr_node = at(index - 1)
    node_to_remove = curr_node.next
    curr_node.next = node_to_remove.next
    node_to_remove.next = nil
  end
end
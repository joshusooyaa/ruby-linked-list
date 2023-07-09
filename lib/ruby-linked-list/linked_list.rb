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
    else
      node = Node.new(value)
      @tail.next = node
      @tail = node
    end
  end

  def prepend(value)
    if head.nil?
      @head = @tail = Node.new(value)
    else
      node = Node.new(value)
      node.next = @head
      @head = node
    end
  end

end
require_relative './ruby-linked-list/linked_list'

ll = LinkedList.new


ll.append(1)
ll.append(3)
ll.append(4)
ll.append(9)
ll.prepend(5)

ll.insert_at(12, 6)

puts ll.to_s
ll.insert_at(15, 0)
puts ll.to_s

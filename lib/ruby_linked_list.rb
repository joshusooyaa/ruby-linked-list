require_relative './ruby-linked-list/linked_list'

ll = LinkedList.new


ll.append(1)
ll.append(3)
ll.append(4)
ll.append(9)
ll.prepend(5)

puts ll.to_s

ll.remove_at(1)
ll.remove_at(1)
puts ll.to_s

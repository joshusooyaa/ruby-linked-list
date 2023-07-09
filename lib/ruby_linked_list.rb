require_relative './ruby-linked-list/linked_list'

ll = LinkedList.new

p ll.size
ll.append(1)
p ll.head
ll.prepend(5)
p ll.head
p ll.size

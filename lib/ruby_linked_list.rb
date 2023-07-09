require_relative './ruby-linked-list/linked_list'

ll = LinkedList.new

ll.append(1)
p ll.head
ll.prepend(5)
p ll.head

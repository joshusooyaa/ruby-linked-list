# Overview
A simple singly linked list for practicing ruby

# Pseudocode
### `#append(value)`
```
if head is nil
  head = tail = new Node
otherwise
create a new node with passed in value
get tail
set tail.next = new node
set tail = new node
```

### `#prepend(value)`
```
if head is nil
  head = tail = new Node
else
  create new node with value
  new node next = head
  head = new node
```


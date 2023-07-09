# Overview
A simple singly linked list for practicing ruby

# Pseudocode
This will include all pseudocode for algorithms that require more thinking
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

### `#size`
It would make most sense to have a size instance variable but for the sake of practice this will just go through the nodes - starts at head and counts until tail.next is nil

### `#pop`
Since we don't have a previous pointer, we have to traverse to the end - 1
We already have two methods that do the work for us though, so we can use these to avoid repeating code
```
if head = tail
  head = tail = nil
otherwise
  get size
  get index at size - 2 (this gets second to last element)
  get node at index
  set node->next nil
  set tail to node
```

### `#contains?`
Start at head and traverse until nil or until value found






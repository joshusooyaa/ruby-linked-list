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

### `#find`
Start at head and traverse until nil or until value found\
Keep track of current index\
Notice this is repeating code from #contains?(value) -- with this, #contains?\(value) should utilize this method

### `#to_s`
```
node = head
until node is nil
  add to string "( value ) -> "

add to string "nil" 
```

### `#insert_at(value, index)`
Must keep track of previous node -- that or we use find, but it wouldn't make sense to loop through again if we can keep track as we go through
```
if index is 0 (or less)
  use prepend

if index >= size
  use append

traverse through until we're at the node one before we want to insert
set new node's next to node we're at's next
set node we're at's next to new node
```

### `#remove_at(index)`
Very similar to insert_at
```
if index is 0 (or less)
  use shift (this will have to be written)

if index is >= size
  use pop

traverse through until we're at the node one before we want to remove
set current_node next to node to remove's next
set node to remove's next to nil
```

### `#shift`
```
do nothing if head is nil
otherwise
  temp = head's next
  head next = nil
  head = temp
```







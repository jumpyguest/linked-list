# linked-list

This repository contains solutions for the linked-list project.
1. Implementation of the LinkedList class and its methods.
2. Implementaion of the Node class used in the LinkedList class.

## Classes

### LinkedList
Class that represents the full list.
```ruby
class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
...
```

**Methods**
- **#append(value)** - adds a new node containing *value* to the end of the list
- **#prepend(value)** - adds a new node containing *value* to the start of the list
- **#size** - returns the total number of nodes in the list
- **#head** - returns the first node in the list
- **#tail** - returns the last node in the list
- **#at(index)** - returns the node at the given *index*
- **#insert_at(value, index)** - inserts a new node with the provided **value* at the given *index*
- **#remove(at)** -  that removes the node at the given *index*
- **#pop** -  that removes the node at the given index.
- **#contains?(value)** - returns true if the passed in value is in the list and otherwise returns false
- **#find(value)** - returns the index of the node containing value, or nil if not found
- **#to_s** - represent the LinkedList objects as strings

### Node
Class that represents a node in the linked list.
```ruby
class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end
...
```

**Methods**
None

## Files
- **linked_list.rb** - Contains implementation of the LinkedList class.
- **node.rb** - Contains the implementation of the Node class.
- **main.rb** - Test file for the list.
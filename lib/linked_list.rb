class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    new_node = Node.new(value)
    if @size == 0
      @head = new_node
    else
      node = @head
      for i in 0..@size-1
        node.next_node = new_node if node.next_node == nil
        node = node.next_node
      end
    end
    @tail = new_node
    @size += 1
  end

  def prepend(value)
    temp_node = @head
    @head = Node.new(value)
    @head.next_node = temp_node
    @size += 1
  end

  def size
    @size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    node = @head
    for i in 0..@size-1
      if i == index
        return node
      else
        node = node.next_node
      end
    end
    nil
  end

  def pop
    node = @head
    return node if @size == 1
    for i in 0..@size-1
      break if i == @size-2
      node = node.next_node
    end
    node.next_node = nil
    @size -= 1
  end

  def contains?(value)
    node = @head
    for i in 0..@size-1
      if value == node.value
        return true
      else
        node = node.next_node
      end
    end
    return false
  end

  def find(value)
    node = @head
    for i in 0..@size-1
      if value == node.value
        return i
      else 
        node = node.next_node
      end
    end
    return nil
  end

  def to_s
    string = ""
    node = @head
    for i in 0..@size-1
      string += "( #{node.value} ) -> "
      node = node.next_node
    end
    string + 'nil'
  end
end

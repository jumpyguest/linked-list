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
      @size.times do
        node.next_node = new_node if node.next_node.nil?
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

  attr_reader :size, :head, :tail

  def at(index)
    node = @head
    for i in 0..@size - 1
      return node if i == index

      node = node.next_node

    end
    nil
  end

  def insert_at(value, index)
    raise 'invalid index' if index >= @size

    if index == 0
      prepend(value)
    else
      node = @head
      for i in 0..index - 1
        if i == index - 1
          temp_node = node.next_node
          node.next_node = Node.new(value)
          node.next_node.next_node = temp_node
          @size += 1
          break
        end
        node = node.next_node
      end
    end
  end

  def remove_at(index)
    raise 'invalid index' if index >= @size

    node = @head
    if index == 0
      @head = node.next_node
    else
      for i in 0..index - 1
        if i == index - 1
          temp_node = node.next_node
          node.next_node = temp_node.next_node
          break
        end
        node = node.next_node
      end
    end
    @size -= 1
  end

  def pop
    node = @head
    return node if @size == 1

    for i in 0..@size - 1
      break if i == @size - 2

      node = node.next_node
    end
    node.next_node = nil
    @size -= 1
  end

  def contains?(value)
    node = @head
    while node
      return true if value == node.value

      node = node.next_node
    end
    false
  end

  def find(value)
    node = @head
    for i in 0..@size - 1
      return i if value == node.value

      node = node.next_node

    end
    nil
  end

  def to_s
    string = ''
    node = @head
    @size.times do
      string += "( #{node.value} ) -> "
      node = node.next_node
    end
    string + 'nil'
  end
end

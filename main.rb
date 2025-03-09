require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

p list.at(0)
list.prepend('deer')
puts list
p list.at(0)

p list.head
p list.pop
puts list

p list.contains?('deer')
p list.find('snake')
list.insert_at('rooster', 4)
puts list
list.remove_at(1)
puts list
p list.contains?('rabbit')

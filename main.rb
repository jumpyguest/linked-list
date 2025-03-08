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
p list.size

p list.at(0)
list.prepend('deer')
puts list
p list.at(0)
p list.size

p list.head
p list.pop
puts list

p list.contains?('cow')
p list.find('snake')
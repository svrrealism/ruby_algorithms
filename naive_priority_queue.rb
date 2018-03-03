class PriorityQueue
  def initialize
    @elements = []
  end

  def <<(element)
    @elements << element
    @elements.sort!
  end

  def pop
    @max = @elements.delete_at(@elements.size - 1)
    "#{@max.name}: #{@max.priority}"
  end
end

class Element
  include Comparable
  attr_reader :name, :priority

  def initialize(name, priority)
    @name, @priority = name, priority
  end

  def <=>(other)
    @priority <=> other.priority
  end
end



q = PriorityQueue.new

a = Element.new("foo", 2)
b = Element.new("bar", 3)
c = Element.new("baz", 1)

q << a
q << b
q << c

p q.pop

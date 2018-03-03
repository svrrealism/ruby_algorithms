#implement a priority queue

class PriorityQueue
  attr_reader :elements

  def initialize()
    @elements = [nil]
  end

  def <<(element)
    @elements << element
    bubble_up(@elements.size - 1)
  end

  def pop
    #exchange the root with the last element
    exchange(1, @elements.size - 1)
    #remove the last element of the list
    max = @elements.pop
    #ensure the tree is ordered again since you want to make everything shift downward, tree wise
    bubble_down(1)
    max
  end

  private
  #bubble things up/heapify using recursion;
  #parent scalar is always greater than the child scalars.
  def bubble_up(index)
    parent_index = (index/2)

    #return if we reach the root element
    return if index <= 1
    return if @elements[parent_index] >= @elements[index]

    #otherwise
    exchange(index, parent_index)

    #recurse
    bubble_up(parent_index)
  end

  def bubble_down(index)
    child_index = (index * 2)
    return if child_index > @elements.size - 1

    #make sure that we get the largest child
    not_the_last_element = child_index < @elements.size - 1

    left_element = @elements[child_index]
    right_element = @elements[child_index + 1]
    child_index += 1 if not_the_last_element && right_element > left_element

    #no need to continue if the parent element is bigger than children
    return if @elements[index] >= @elements[child_index]
    exchange(index, child_index)
    bubble_down(child_index)
  end

  def exchange(source, target)
    @elements[source], @elements[target] = @elements[target], @elements[source]
  end
end


q = PriorityQueue.new
q << 2
q << 3
q << 1

p q.pop

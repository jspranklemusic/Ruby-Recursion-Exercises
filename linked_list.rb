class Node
  attr_accessor :next_node, :prev_node, :value
  def initialize(value="My Value",next_node=nil,prev_node=nil)
    @next_node = next_node
    @prev_node = prev_node
    @value = value
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def all_nodes
    arr = []
    temp = @head
    while temp.next_node != nil
      arr.push({
        "next"=>temp.next_node.value,
        "prev"=>temp.prev_node ? temp.prev_node.value : nil,
        "value"=>temp.value
      })
      temp = temp.next_node
    end
    return arr
  end

  def push(value)
    node = Node.new(value)
    if !@head
      @head = node
      @tail = node
      @head.next_node = @tail
      return {
        "prev_node" => @tail.prev_node,
        "next_node" => @tail.next_node,
        "value" => @tail.value  
      }
    else
    @tail.next_node = node
    node.prev_node = @tail
    @tail = node
     return {
        "prev_node" => @tail.prev_node,
        "next_node" => @tail.next_node,
        "value" => @tail.value  
      }
    end

  end
end





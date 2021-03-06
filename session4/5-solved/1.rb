# load the stack code in
require File.expand_path("../../3-challenge/1_stack_classes_inspect", __FILE__)


class Stack
  def inspect
    current   = @head
    to_return = "("
    while current
      to_return << current.data.inspect
      to_return << ")"
      current = current.next_node
    end
    to_return << ")" if to_return == "("
    to_return
  end
end

#Jordan
class Stack
  def inspect
    output = "("
    current_head = @head
    while current_head
      output << current_head.data.inspect
      output << ")"
      current_head = current_head.next_node
    end
    output << ")" if output == "("
    output
  end
end
#=======

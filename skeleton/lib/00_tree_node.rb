require 'byebug'
class PolyTreeNode

  attr_reader :value
  attr_accessor :children


  def initialize(value, children = [])
    @value = value
    @parent = nil
    @children = children
  end

  def parent
    @parent
  end

  def parent=(new_parent)

    # p self
    if @parent == nil
       @parent = new_parent
     end
    #new_parent is an instance
    # debugger
    if new_parent != nil
      @parent.children.delete(self)
      new_parent.children << self unless new_parent.children.include?(self)
    end

    @parent = new_parent

  end

  def add_child(child_node)
    child_node.parent=(self)
  end

  def remove_child(child_node)
    raise "Not a child" if child_node.parent.nil?
    child_node.parent=(nil)
  end

  def dfs(target_value)
    # debugger

    return self if self.value == target_value
    self.children.each do |child|
      child_value = child.dfs(target_value)
      # p child.dfs(target_value)
      next if child_value.nil?
      return child_value
      # return child if child.value == target_value
    end
    nil
  end

  def bfs(target_value)
    queue = [self]
    until queue.empty?
      a = queue.shift
      return a if a.value == target_value
      if a.children.length > 0
        queue += a.children
      end
    end
    nil
    # return self if self.value == target_value
    #
    # queue.each do |node|
    #   queue.shift #does first row
    #   node_value = node.bfs(target_value)
    #   return node_value
    # end
    #   nil




  end
end

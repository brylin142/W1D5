require_relative '00_tree_node'

class KinghtPathFinder
  attr_reader :node

  def initialize(start_pos)
    @visited_positions = [start_pos]
    # @start_pos = start_pos
    build_move_tree
  end

  # def find_path(end_pos)
  #   return node.value if node.value == end_pos
  # end

  def build_move_tree
      @node = PolyTreeNode.new(start_pos)
  end

  def already_visited?(pos)
    @visited_positions.include?(pos)
  end

  def new_move_positions

    #calls valid_moves
    possible_positions = [] #iterate adding onto start with the
                              # limitations of self.valid_moves
     #valid moves(pos) has possible 8 positions
     #new_move position should have an array of pos that has not been traveled

  end

  def self.valid_moves(pos) #should return all possible coords that are valid
    x, y = pos
    possible_positions = []
    possible_moves = [[1,2], [2,1], [-1, 2], [-2, 1], [-2, -1], [-1, -2], [1, -2], [2, -1]]
     #iteration
    #make sure each value is not > 7

  end


end

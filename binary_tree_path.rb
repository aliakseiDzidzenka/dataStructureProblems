# Given a binary tree, return all root-to-leaf paths.

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
	return  [root.val] if root.left.nil? && root.right.nil?

 	paths_keeper = []
 	if root.left
		paths_keeper += binary_tree_paths(root.left).map {|path| root.val.to_s + "->" + path.to_s} 
	end
	if root.right
		paths_keeper += binary_tree_paths(root.right).map {|path| root.val.to_s + "->" + path.to_s} if root.right
	end

 	return paths_keeper
end

# To check this code use following

# def insert(root, value)
# 	if value < root.val
# 		root.left.nil? ? root.left = TreeNode.new(value) : insert(root.left, value)
# 	elsif value > root.val
# 		root.right.nil? ? root.right = TreeNode.new(value) : insert(root.right, value)
# 	else
# 		puts "already in"
# 	end
			
# end

# root = TreeNode.new(5)

# insert(root, 4)
# insert(root, 6)
# insert(root, 2)
# insert(root, 10)
# insert(root, 1)
# insert(root, 3)
# insert(root, 8)
# insert(root, 11)


# paths = binary_tree_paths(root)

# puts paths.to_s


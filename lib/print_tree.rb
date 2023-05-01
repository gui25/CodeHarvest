def print_tree(tree, indent = '')
  tree.each do |item|
    case item[:type]
    when :dir
      puts "#{indent}Folder: #{item[:name]}/"
      print_tree(item[:children], indent + '  ')
    when :file
      puts "#{indent}File: #{item[:name]}"
      puts
    end
  end
end

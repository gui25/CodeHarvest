def save_tree(tree, file, indent = '')
  tree.each do |item|
    case item[:type]
    when :dir
      file.puts "#{indent}Folder: #{item[:name]}/"
      save_tree(item[:children], file, indent + '  ')
    when :file
      file.puts "#{indent}File: #{item[:name]}"
      file.puts "#{indent}Content:"
      item[:content].lines.each do |line|
        file.puts "#{indent}  #{line.rstrip}"
      end
      file.puts
    end
  end
end

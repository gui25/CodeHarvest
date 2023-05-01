def run_scraper
  puts 'Please enter the GitHub repository URL:'
  repo_url = gets.chomp
  repo_name = repo_url.split('/')[-1]

  puts "\nFetching the available branches..."
  branches = fetch_branches(repo_url)

  puts "\nAvailable branches:"
  branches.each_with_index { |branch, index| puts "#{index + 1}. #{branch}" }

  chosen_branch = choose_branch(branches)
  branch_url = "#{repo_url}/tree/#{chosen_branch}"

  puts "\nChoose file display preference:"
  puts "1. Files before folders (default)"
  puts "2. Files after folders"
  print "Enter your choice (1 or 2): "
  file_preference = gets.chomp.to_i
  files_before_folders = file_preference == 2 ? false : true

  puts "\nFetching the repository structure for branch '#{chosen_branch}'..."

  tree = parse_directory(repo_url, chosen_branch, '', '', files_before_folders)

  puts 'Repository structure:'
  print_tree(tree)

  unique_folder_name = generate_unique_folder_name(repo_name)
  FileUtils.mkdir_p(unique_folder_name)

  File.open("#{unique_folder_name}/repo_structure.txt", 'w') do |file|
    save_tree(tree, file)
  end

  puts "\nThe repository structure has been saved in the folder '#{unique_folder_name}' as 'repo_structure.txt'."
end

require 'nokogiri'
require 'httparty'
require 'fileutils'

require_relative 'lib/fetch_branches'
require_relative 'lib/filter_extension'
require_relative 'lib/choose_branch'
require_relative 'lib/encode_url'
require_relative 'lib/parse_directory'
require_relative 'lib/generate_file_url'
require_relative 'lib/fetch_file_content'
require_relative 'lib/print_tree'
require_relative 'lib/save_tree'
require_relative 'lib/generate_unique_folder_name'
require_relative 'lib/run_scraper'

puts 'Welcome to the CodeHarvest!'
run_scraper

loop do
  puts "\nDo you want to scrape another repository or exit?"
  puts "1. Scrape another GitHub repository"
  puts "2. Exit"
  print "Enter your choice (1 or 2): "
  choice = gets.chomp.to_i

  case choice
  when 1
    run_scraper
  when 2
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end

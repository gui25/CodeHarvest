def choose_branch(branches)
  chosen_branch = nil

  loop do
    print 'Enter the number of the branch you want to use: '
    selection = gets.chomp.to_i

    if selection >= 1 && selection <= branches.length
      chosen_branch = branches[selection - 1]
      break
    else
      puts 'Invalid branch number. Please try again.'
    end
  end

  chosen_branch
end

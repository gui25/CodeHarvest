def generate_unique_folder_name(base_name)
  folder_name = "projectResults/#{base_name}"
  counter = 1

  while File.directory?(folder_name)
    folder_name = "projectResults/#{base_name}_#{counter}"
    counter += 1
  end

  folder_name
end

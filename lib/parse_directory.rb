def parse_directory(base_url, branch, path = '', indent = '', files_before_folders = true)
  repo_url = "#{base_url}/tree/#{branch}/#{path}"
  encoded_url = encode_url(repo_url)
  response = HTTParty.get(encoded_url)
  parsed_page = Nokogiri::HTML(response.body)
  files = []
  dirs = []

  parsed_page.css('.js-navigation-item').each do |item|
    icon = item.css('.octicon')

    next if icon.empty?

    type = icon.attr('aria-label').value.strip.downcase
    name = item.css('.js-navigation-open').text.strip

    next if type.empty? || name.empty?

    if type == 'directory'
      new_path = path.empty? ? name : "#{path}/#{name}"
      new_indent = indent.empty? ? name : "#{indent}/#{name}"
      dirs << { type: :dir, name: name, children: parse_directory(base_url, branch, new_path, new_indent, files_before_folders) }
    elsif type == 'file'
      file_url = generate_file_url(base_url, branch, path || '', name)
      content = fetch_file_content(encode_url(file_url))
      extension = File.extname(name)

      if filter_extension?(extension)
        files << { type: :file, name: name, content: content, indent: indent }
      else
        files << { type: :file, name: name, content: "Content is not readable", indent: indent }
      end
    end
  end

  tree = files_before_folders ? (files + dirs) : (dirs + files)
  tree.flatten
end

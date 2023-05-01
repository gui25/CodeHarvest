def generate_file_url(repo_url, branch, indent, file_name)
  repo_base_url = repo_url.gsub(/\/tree\/.*/, '')
  repo_name = repo_url.gsub(/.*github.com\/([^\/]*\/[^\/]*).*/, '\1')
  "#{repo_base_url}/raw/#{branch}/#{indent.empty? ? '' : "#{indent}/"}#{file_name}"
end

def fetch_file_content(url)
  response = HTTParty.get(url)
  response.body
end

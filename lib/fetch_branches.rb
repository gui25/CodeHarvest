def fetch_branches(repo_url)
  branches_url = "#{repo_url}/branches/all"
  response = HTTParty.get(branches_url)
  doc = Nokogiri::HTML(response.body)
  branches = []

  doc.css('branch-filter-item').each do |item|
    branch_name = item.attr('branch')
    branches << branch_name unless branch_name.empty?
  end

  branches
end

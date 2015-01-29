require 'csv'
# As of ruby 1.9.3, 'csv' part of core implementation -- no need to gem install it

namespace :import_data do
  desc "Import CSV issues data into issues table"
  task issues: :environment do
  	# Setting :headers => true will treat the first row as headers instead of as data
  	CSV.foreach(Rails.root + "data/issue_tags.csv", :headers => true) do |row|
  		Issue.create!(row.to_hash)
  	end
  end

end

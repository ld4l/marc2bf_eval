class Issue < ActiveRecord::Base
	has_many :conversion_issues
	has_many :conversions, :through => :conversion_issues
end

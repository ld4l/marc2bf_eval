class Conversion < ActiveRecord::Base
	has_many :conversion_issues
	has_many :issues, :through => :conversion_issues
	accepts_nested_attributes_for :issues, :allow_destroy => true
end

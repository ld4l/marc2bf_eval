class Conversion < ActiveRecord::Base
	has_many :conversion_issues
	has_many :issues, :through => :conversion_issues
	accepts_nested_attributes_for :issues, :allow_destroy => true

	# def self.search(search)
	# 	if search
	# 		find(:all, :conditions => ['conversion like ?', "%#{search}%"])
	# 	else
	# 		find(:all)
	# 	end		
	# end

end

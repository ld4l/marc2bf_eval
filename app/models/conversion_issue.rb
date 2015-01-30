class ConversionIssue < ActiveRecord::Base
	belongs_to :conversion
	belongs_to :issue
end

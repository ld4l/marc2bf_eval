class ConversionIssue < ActiveRecord::Base
	belongs_to :conversion
	belongs_to :issue

	validates :conversion_id, :issue_id, :comment, :evaluator_id, presence: true
end

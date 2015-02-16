class Evaluator < ActiveRecord::Base

	validates :last_name, :first_name, presence: true
	
	def full_name
		"#{first_name} #{last_name}"
	end
end

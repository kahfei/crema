class Student < ActiveRecord::Base
	has_many :enrolments
	has_many :payments
	has_many :subjects, :through => :enrolments

	def tuition_fee
		subjects.collect { |subject| subject.fee }.sum
	end
end

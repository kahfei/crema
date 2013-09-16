class Student < ActiveRecord::Base
	validates :name, presence: true
	validates :registration_number, uniqueness: true
	validates :email, presence: true
	validates :mobile, presence: true
	validates :school, presence: true

	has_many :enrolments
	has_many :payments
	has_many :subjects, :through => :enrolments

	def tuition_fee
		subjects.collect { |subject| subject.fee }.sum
	end

	def generate_registration_number
		"PLN-%.6d" % (id + 1)
	end
end

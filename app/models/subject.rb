class Subject < ActiveRecord::Base
	has_many :enrolments
	has_many :students, :through => :enrolments
end

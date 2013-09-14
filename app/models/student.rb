class Student < ActiveRecord::Base
	has_many :enrolments
	has_many :subjects, :through => :enrolments
end

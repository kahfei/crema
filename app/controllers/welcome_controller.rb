class WelcomeController < ApplicationController
  def home
  	@subjects = Subject.all
  	@students = Student.all
  	@subject = Subject.new
  end
end

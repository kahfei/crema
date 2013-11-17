class WelcomeController < ApplicationController
before_action :signed_in_user
  def home
  	@subjects = Subject.all
  	@students = Student.all
  	@subject = Subject.new
  end
end

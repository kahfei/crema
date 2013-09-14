class RenameStudentidToRegistrationNumber < ActiveRecord::Migration
  def change
  	rename_column :students, :student_id, :registration_number
  end
end

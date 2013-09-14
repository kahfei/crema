class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :student_id
      t.string :email
      t.string :mobile
      t.string :school
      t.decimal :tuition_fee

      t.timestamps
    end
  end
end

class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.references :student, index: true
      t.references :subject, index: true

      t.timestamps
    end
  end
end

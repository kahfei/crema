class AddFeeToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :fee, :decimal
  end
end

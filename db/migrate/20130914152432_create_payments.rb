class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :paid_for_month
      t.references :student, index: true

      t.timestamps
    end
  end
end

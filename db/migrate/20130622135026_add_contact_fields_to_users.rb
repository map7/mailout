class AddContactFieldsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :mobile
      t.string :home_phone
      t.string :work_phone
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
    end
  end
end

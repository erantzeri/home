class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :children
      t.string :significant_other

      t.timestamps null: false
    end
  end
end

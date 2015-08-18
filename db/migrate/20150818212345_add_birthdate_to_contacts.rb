class AddBirthdateToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :bday, :date
  end
end

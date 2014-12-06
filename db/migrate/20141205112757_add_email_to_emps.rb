class AddEmailToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :email, :string
  end
end

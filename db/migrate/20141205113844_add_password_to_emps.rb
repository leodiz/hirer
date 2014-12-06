class AddPasswordToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :password, :string
  end
end

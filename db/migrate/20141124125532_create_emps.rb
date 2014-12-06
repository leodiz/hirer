class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.integer :age
      t.text :skills
      t.string :city

      t.timestamps
    end
  end
end

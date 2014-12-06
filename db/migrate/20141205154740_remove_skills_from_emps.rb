class RemoveSkillsFromEmps < ActiveRecord::Migration
  def change
    remove_column :emps, :skills
  end
end

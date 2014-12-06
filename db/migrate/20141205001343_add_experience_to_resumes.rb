class AddExperienceToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :experience, :float
  end
end

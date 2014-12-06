class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :skills
      t.date :dateOfBirth
      t.string :city
      t.string :phone
      t.string :education
      t.string :languages
      t.text :other
      t.integer :emp_id

      t.timestamps
    end
  end
end

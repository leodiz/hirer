class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :path
      t.integer :resume_id

      t.timestamps
    end
  end
end

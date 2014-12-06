class RenameResumeIdToEmpIdInPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :resume_id, :emp_id
  end
end

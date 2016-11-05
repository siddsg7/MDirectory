class AddPhotoColumnToDoctors < ActiveRecord::Migration
  def up
    add_attachment :doctors, :photo
  end

  def down
    remove_attachment :doctors, :photo
  end
end

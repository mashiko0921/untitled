class AddAttachmentPhoto2ToPictures < ActiveRecord::Migration[5.2]
  def self.up
    change_table :pictures do |t|
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :pictures, :photo2
  end
end

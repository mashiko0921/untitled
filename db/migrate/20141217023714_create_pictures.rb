class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name, :limit=>1000
      t.timestamps
    end
end
end
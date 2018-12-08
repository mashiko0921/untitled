class CreateHatsugens < ActiveRecord::Migration[5.2]
  def change
    create_table :hatsugens do |t|
      t.string :hatsugen
      t.string :re_id
      t.string :account_id

      t.timestamps
    end
  end
end

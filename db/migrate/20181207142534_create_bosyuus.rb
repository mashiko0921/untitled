class CreateBosyuus < ActiveRecord::Migration[5.2]
  def change
    create_table :bosyuus do |t|
      t.string :bosyuu
      t.string :re_id
t.string :account_id
      t.timestamps
    end
  end
end

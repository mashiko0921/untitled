# app/models/picture.rb

class Picture < ActiveRecord::Base
  has_attached_file :photo2,validate_media_type: false,
                    :styles => { medium: "300x300>", thumb: "100x100>" }, # 画像サイズを指定
                    :url  => "/assets/arts/:id/:style/:basename.:extension", # 画像保存先のURL先
                    :path => "#{Rails.root}/public/assets/arts/:id/:style/:basename.:extension"# サーバ上の画像保存先パス



  ## Validation
  validates_attachment_content_type :photo2,
                                    :content_type =>  ["image/jpg", "image/jpeg","image/png", "image/gif"]
  validates_attachment :photo2,:attachment_presence => true# ファイルの存在チェック
  validates_attachment_size :photo2, :less_than => 1000.megabytes # ファイルサイズのチェック
end

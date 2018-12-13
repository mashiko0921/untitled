class Tagmap < ApplicationRecord
  # コメントに履歴からタグをつける
  # 引数：コメントID
  def self.associate(comid)
    history = Taghistory.where(acc_id: current_account.acc_id).order(updated_at:"DESC").first
    if history.present? then
      if history[:univtag].present? then
        tagid = Tag.increment(history[:univtag])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:faculty].present? then
        tagid = Tag.increment(history[:faculty])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:department].present? then
        tagid = Tag.increment(history[:department])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag1].present? then
        tagid = Tag.increment(history[:tag1])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag2].present? then
        tagid = Tag.increment(history[:tag2])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag3].present? then
        tagid = Tag.increment(history[:tag3])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag4].present? then
        tagid = Tag.increment(history[:tag4])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag5].present? then
        tagid = Tag.increment(history[:tag5])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag6].present? then
        tagid = Tag.increment(history[:tag6])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
      if history[:tag7].present? then
        tagid = Tag.increment(history[:tag7])
        newmap = Tagmap.new(com_id: comid,tag_id: tagid)
        newmap.save
      end
    end
  end

  # コメント削除されたときにそのコメントについたタグを外す
  def self.delrelated(comid)
    deltagmap = Tagmap.where(com_id: comid)
    deltagmap.each do |t|
      Tag.decrement(t.com_id)
    end
    deltagmap.destroy_all
  end
end

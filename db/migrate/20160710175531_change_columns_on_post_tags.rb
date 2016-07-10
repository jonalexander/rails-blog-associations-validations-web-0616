class ChangeColumnsOnPostTags < ActiveRecord::Migration
  def change
    change_column :post_tags, :tags_id, :tag_id 
  end
end

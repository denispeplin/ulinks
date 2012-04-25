class RemoveWatsupIdFromForumLink < ActiveRecord::Migration
  def up
    remove_column :forum_links, :watsup_link_id
  end

  def down
    add_column :forum_links, :watsup_link_id
  end
end

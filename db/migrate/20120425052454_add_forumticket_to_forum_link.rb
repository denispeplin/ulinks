class AddForumticketToForumLink < ActiveRecord::Migration
  def change
    add_column :forum_links, :forumticket, :string
  end
end

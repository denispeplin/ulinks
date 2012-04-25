class CreateForumLinkWatsupLinks < ActiveRecord::Migration
  def change
    create_table :forum_link_watsup_links do |t|
      t.references :forum_link
      t.references :watsup_link
      t.float :probability

      t.timestamps
    end
    add_index :forum_link_watsup_links, :forum_link_id
    add_index :forum_link_watsup_links, :watsup_link_id
  end
end

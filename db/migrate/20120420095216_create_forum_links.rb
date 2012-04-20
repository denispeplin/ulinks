class CreateForumLinks < ActiveRecord::Migration
  def change
    create_table :forum_links do |t|
      t.string :path
      t.string :text
      t.references :watsup_link

      t.timestamps
    end
    add_index :forum_links, :watsup_link_id
  end
end

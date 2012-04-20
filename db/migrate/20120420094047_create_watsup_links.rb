class CreateWatsupLinks < ActiveRecord::Migration
  def change
    create_table :watsup_links do |t|
      t.string :path
      t.string :text

      t.timestamps
    end
  end
end

class AddIpAddressToWatsupLink < ActiveRecord::Migration
  def change
    add_column :watsup_links, :ip_address, :string
  end
end

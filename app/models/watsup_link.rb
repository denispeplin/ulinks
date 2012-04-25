class WatsupLink < ActiveRecord::Base
  attr_accessible :path, :text, :ip_address
  has_many :forum_link_watsup_link
  has_many :forum_link, through: :forum_link_watsup_link
  validates_uniqueness_of :path
end

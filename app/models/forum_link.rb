class ForumLink < ActiveRecord::Base
  attr_accessible :path, :text, :forumticket
  has_many :forum_link_watsup_link
  has_many :watsup_link, through: :forum_link_watsup_link
  validates_uniqueness_of :forumticket

  # extract '123456' from 'id=123456' part of the path
  def self.forumticket_extract(path)
    path.split('&').grep(/id=[0-9]+/)[0].split('=')[1]
  end
end

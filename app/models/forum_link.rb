class ForumLink < ActiveRecord::Base
  attr_accessible :path, :text, :forumticket
  belongs_to :watsup_link
  validates_uniqueness_of :forumticket

  # extract '123456' from 'id=123456' part of the path
  def self.forumticket_extract(path)
    path.split('&').grep(/id=[0-9]+/)[0].split('=')[1]
  end
end

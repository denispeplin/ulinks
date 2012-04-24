class ForumLink < ActiveRecord::Base
  attr_accessible :path, :text
  belongs_to :watsup_link
end

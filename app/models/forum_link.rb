class ForumLink < ActiveRecord::Base
  belongs_to :watsup_link
  attr_accessible :path, :text
end

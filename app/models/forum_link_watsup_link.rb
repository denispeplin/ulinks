class ForumLinkWatsupLink < ActiveRecord::Base
  belongs_to :forum_link
  belongs_to :watsup_link
  attr_accessible :probability
end

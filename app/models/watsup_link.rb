class WatsupLink < ActiveRecord::Base
  attr_accessible :path, :text
  belongs_to :forum_link
end

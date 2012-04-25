class WatsupLink < ActiveRecord::Base
  attr_accessible :path, :text
  validates_uniqueness_of :path
end

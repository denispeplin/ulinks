class WatsupLink < ActiveRecord::Base
  attr_accessible :path, :text, :ip_address
  validates_uniqueness_of :path
end

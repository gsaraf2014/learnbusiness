class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :contents, :through => :taggings
	
end

class Content < ActiveRecord::Base

has_many :taggings
has_many :tags, :through => :taggings

end

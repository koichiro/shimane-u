class Entry < ActiveRecord::Base
  attr_accessible :content, :user_name
  validates :content, :presence => true
end

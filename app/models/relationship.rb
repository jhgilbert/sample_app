class Relationship < ActiveRecord::Base
  attr_accessible :followed_id # ", :follower_id" disappears in 11.6
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
end

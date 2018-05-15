class Comment < ApplicationRecord
  
  belongs_to :blog_post
  belongs_to :user
  
  validates :comment_entry, :blog_post_id, presence: true
  # blog_post_id is a foreign key
  
end

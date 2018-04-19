class BlogPost < ApplicationRecord
  
  has_many :comments, dependent: :destroy  
  # if you destroy a blog post, all comments will be destroyed too
  
  validates :title, :blog_entry, presence: true
  validates :title, uniqueness: true, length: { maximum: 140 }
  
end

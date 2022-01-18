class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  scope :with_posts, -> { where.not(posts: []) }
end

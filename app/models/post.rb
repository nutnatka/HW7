class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  validates :content, length: { minimum: 2, maximum: 250 }
  validates :title, length: { minimum: 2, maximum: 50 }
end

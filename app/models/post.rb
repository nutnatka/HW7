class Post < ApplicationRecord
  validates :content, length: { minimum: 2, maximum: 250 }
  validates :title, length: { minimum: 2, maximum: 50 }
end

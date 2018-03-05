class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :long_summary, length {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
end
